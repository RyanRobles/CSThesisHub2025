import pytesseract
import cv2
from PIL import Image
import PyPDF2
import re
import spacy
import os
from pathlib import Path
import tempfile
import numpy as np
import pdf2image
# Load both models
nlp_base = spacy.load("en_core_web_sm")

# custom SpanCat model
custom_model_path = Path(__file__).parent / "cs-acad_ner" / "models" / "cs-acad_spancat"
nlp_custom = spacy.load(custom_model_path)
def process_camscanner_pdf(pdf_path, output_path=None):
    """
    Convert CamScanner PDF to OCR-readable images, focusing on first 2 pages.
    
    Args:
        pdf_path: Path to the CamScanner PDF file
        output_path: Optional path to save processed images (default: temp file)
    
    Returns:
        List of processed page images (PIL.Image objects)
    """
    try:
        # Convert first 2 pages of PDF to images (300 DPI for good OCR quality)
        pages = pdf2image.convert_from_path(
            pdf_path,
            first_page=1,
            last_page=2,
            dpi=300,
            grayscale=True
        )
        
        processed_pages = []
        
        for i, page in enumerate(pages):
            # Convert PIL image to numpy array for OpenCV processing
            img = np.array(page)
            
            # Apply preprocessing tailored for CamScanner documents
            processed = preprocess_camscanner_image(img)
            
            # Convert back to PIL Image
            processed_pages.append(Image.fromarray(processed))
            
            # Save if output path specified
            if output_path:
                page_path = f"{output_path}_page{i+1}.jpg"
                processed_pages[-1].save(page_path, "JPEG", quality=95)
        
        return processed_pages
    
    except Exception as e:
        print(f"Error processing CamScanner PDF: {str(e)}")
        return []

def preprocess_camscanner_image(img):
    """
    Preprocess a single CamScanner page image for better OCR results.
    
    Args:
        img: Numpy array of the image (grayscale)
    
    Returns:
        Processed numpy array
    """
    try:
        # 1. Adaptive thresholding to handle uneven lighting
        processed = cv2.adaptiveThreshold(
            img, 255,
            cv2.ADAPTIVE_THRESH_GAUSSIAN_C,
            cv2.THRESH_BINARY, 11, 2
        )
        
        # 2. Remove small noise (like scanner dust)
        kernel = np.ones((1, 1), np.uint8)
        processed = cv2.morphologyEx(processed, cv2.MORPH_OPEN, kernel)
        
        # 3. Enhance text sharpness
        kernel = np.array([[-1,-1,-1], [-1,9,-1], [-1,-1,-1]])
        processed = cv2.filter2D(processed, -1, kernel)
        
        # 4. Deskew if needed (common in phone-scanned documents)
        coords = np.column_stack(np.where(processed > 0))
        angle = cv2.minAreaRect(coords)[-1]
        
        if angle < -45:
            angle = -(90 + angle)
        else:
            angle = -angle
            
        (h, w) = processed.shape[:2]
        center = (w // 2, h // 2)
        M = cv2.getRotationMatrix2D(center, angle, 1.0)
        processed = cv2.warpAffine(
            processed, M, (w, h),
            flags=cv2.INTER_CUBIC,
            borderMode=cv2.BORDER_REPLICATE
        )
        
        return processed
    
    except Exception as e:
        print(f"Error preprocessing CamScanner image: {str(e)}")
        return img
def extract_keywords_from_abstract(text):
    """Extract keywords from the abstract section of a thesis."""
    # Try to find the abstract section
    abstract_start = None
    lines = text.split('\n')
    
    # Look for common abstract indicators
    for i, line in enumerate(lines):
        if "abstract" in line.lower() and len(line.strip().split()) <= 3:
            abstract_start = i + 1
            break
    
    if abstract_start is None:
        return "Not Found"
    
    # Get the abstract content (next 1-2 pages)
    abstract_end = min(abstract_start + 40, len(lines))  # ~40 lines = ~2 pages
    abstract_text = '\n'.join(lines[abstract_start:abstract_end])
    
    # Process with spaCy
    doc = nlp_base(abstract_text)
    
    # Extract keywords using noun chunks and named entities
    keywords = set()
    
    # Get noun chunks
    for chunk in doc.noun_chunks:
        chunk_text = chunk.text.strip()
        if 2 <= len(chunk_text.split()) <= 4:  # Multi-word phrases
            keywords.add(chunk_text)
    
    # Get named entities
    for ent in doc.ents:
        if ent.label_ in ["ORG", "PRODUCT", "TECH"]:
            keywords.add(ent.text)
    
    # Get important nouns/adjectives
    for token in doc:
        if token.pos_ in ["NOUN", "PROPN", "ADJ"] and not token.is_stop:
            if len(token.text) > 3:  # Skip short words
                keywords.add(token.text.lower())
    
    # Filter out common words
    common_words = {
        "study", "research", "paper", "thesis", "project", 
        "method", "result", "analysis", "data", "system"
    }
    filtered_keywords = [
        kw for kw in keywords 
        if kw.lower() not in common_words and len(kw) > 3
    ]
    
    return ", ".join(filtered_keywords[:10]) if filtered_keywords else "Not Found"

def preprocess_image_for_ocr(image_path):
    image = cv2.imread(image_path)

    # Convert to grayscale
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

    # Resize to improve OCR accuracy
    scale_percent = 70  # or 200
    width = int(gray.shape[1] * scale_percent / 100)
    height = int(gray.shape[0] * scale_percent / 100)
    dim = (width, height)
    resized = cv2.resize(gray, dim, interpolation=cv2.INTER_LINEAR)

#    Apply slight Gaussian blur to reduce noise (avoids CLAHE + adaptive overkill)
    blurred = cv2.GaussianBlur(gray, (3, 3), 0)

    # Global thresholding instead of adaptive
    _, binary = cv2.threshold(blurred, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)

    # Binarization
    thresh = cv2.threshold(resized, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)[1]

    # Denoise
    denoised = cv2.fastNlMeansDenoising(thresh, h=30)

     # Save the result
    temp_path = os.path.join(tempfile.gettempdir(), "preprocessed_ocr.jpg")
    cv2.imwrite(temp_path, binary)


    return temp_path

def extract_text_from_image_by_type(image_path):
    try:
        ext = os.path.splitext(image_path)[1].lower()

        if ext == ".png":
            # Preprocess or handle PNG differently
            return extract_text_from_png(image_path)
        elif ext in [".jpg", ".jpeg"]:
            # Preprocess or handle JPEG differently
            return extract_text_from_jpeg(image_path)
        else:
            print(f"Unsupported image format: {ext}")
            return ""
    except Exception as e:
        print(f"Error in extract_text_from_image_by_type: {str(e)}")
        return ""

def extract_text_from_pdf(filepath):
    text = ""
    with open(filepath, 'rb') as f:
        reader = PyPDF2.PdfReader(f)
        for page in reader.pages:
            # Improved extraction with layout preservation
            text += page.extract_text() + "\n\n"

    # Clean the extracted text
    text = re.sub(r'\n{3,}', '\n\n', text)  # Remove excessive newlines
    text = re.sub(r'-\n', '', text)         # Fix hyphenated words
    return text.strip()

def extract_text_from_png(image_path):
    """
    Extract text from an image file using Tesseract OCR
    """
    try:
        img = Image.open(image_path)
        text = pytesseract.image_to_string(img)
        return text.strip()
    except Exception as e:
        print(f"Error in extract_text_from_image_by_type: {str(e)}")
        return ""

def extract_text_from_jpeg(image_path):
    try:
        processed_path = preprocess_image_for_ocr(image_path)
        img = Image.open(processed_path)
        img.load()
        img = img.convert('L')
        img.info['dpi'] = (300, 300)


        config = "--oem 3 --psm 3"  # LSTM neural nets + assume single uniform block
        text = pytesseract.image_to_string(img, config=config)

        return text.strip()
    except Exception as e:
        print(f"Error in extract_text_from_image_by_type: {str(e)}")
        return ""

def clean_ocr_text(text):
    replacements = {
        "‘": "'", "’": "'", "“": '"', "”": '"',
        "—": "-", "–": "-", "•": "",
        "ﬂ": "fl", "ﬁ": "fi", "—": "-",
        " Universitv": " University",  # common OCR mistake
        "fullment": "fulfillment",
        "mus": "Imus",
        "Mus": "Imus",
        "Cavite State Universitv": "Cavite State University",
        "Depaltment": "Department",
        "Scicnce": "Science",
        "thc": "the",
        "Thcsis": "Thesis",
        "Systcm": "System",
    }

    # Replace all manually
    for wrong, right in replacements.items():
        text = text.replace(wrong, right)

    # Remove multiple spaces
    text = re.sub(r'\s{2,}', ' ', text)

    return text

def extract_title(lines):
    """Extracts thesis title across multiple lines and removes generic trailing phrases."""
    title_lines = []
    capture = False
    lines_after_start = 0
    max_lines = 6  # Prevent capturing irrelevant lines
    stop_keywords = ['submitted', 'abstract', 'adviser', 'advisor', 'chapter', 'by', 'researchers', 'requirement', 'presented']

    for line in lines[:15]:
        stripped = line.strip()
        check_line = stripped.lower()

        if capture:
            if any(word in check_line for word in stop_keywords):
                break
            if lines_after_start < max_lines:
                title_lines.append(stripped)
                lines_after_start += 1
            else:
                break
            continue

        if stripped.isupper() and len(re.findall(r'\b[A-Z]{2,}\b', stripped)) >= 3:
            title_lines.append(stripped)
            capture = True
            lines_after_start = 1

    if not title_lines:
        return "Not Found"

    # Join and clean
    full_title = " ".join(title_lines).strip(" .,")

    # Remove common non-title suffixes
    generic_suffixes = [
        r"\b(an?\s+)?undergraduate thesis\b",
        r"\ba thesis (submitted|presented)[^,.;:]*",
        r"\ba research paper[^,.;:]*",
        r"\ba capstone project\b"
    ]
    for pattern in generic_suffixes:
        full_title = re.sub(pattern, "", full_title, flags=re.IGNORECASE).strip(" .,;:-")

    return full_title
def extract_info(text):
    text = clean_ocr_text(text)
    lines = [line.strip() for line in text.split("\n") if line.strip()]

    # Get title using existing method
    title = extract_title(lines)

    # Process with custom model for other fields
    doc = nlp_custom(text)

    # Initialize default values
    info = {
        "Title": title,
        "Author": "Not Found",
        "School": "Cavite State University - Imus Campus",
        "Year Made": "Not Found",
        "Keywords": extract_keywords_from_abstract(text)  # Use new function
    }

    # Extract authors and other entities
    authors = []
    for ent in doc.spans.get("sc", []):
        if ent.label_ == "AUTHOR":
            # Enhanced cleaning for author names
            cleaned_author = re.sub(r"[\"'`.,;:()\[\]{}<>]", "", ent.text).strip().upper()
            cleaned_author = re.sub(r"\s{2,}", " ", cleaned_author)
            if len(cleaned_author.split()) >= 2:
                authors.append(cleaned_author)

    # Improved author normalization and deduplication
    def normalize_author_name(name):
        # Remove all non-alphabetic characters except spaces
        name = re.sub(r"[^A-Z ]", "", name.upper().strip())
        # Standardize name format (Lastname Firstname Middlename)
        parts = name.split()
        if len(parts) > 1:
            # Handle cases like "ANDRES, JOHN RYAN L" -> "ANDRES JOHN RYAN L"
            if ',' in name:
                lastname = parts[0].replace(',', '')
                rest = ' '.join(parts[1:])
                name = f"{lastname} {rest}"
            # Remove duplicate middle initials (e.g., "L L" -> "L")
            name = re.sub(r'(\b[A-Z]\b\s*){2,}', lambda m: m.group(1), name)
        return name

    # Two-pass deduplication for better accuracy
    unique_authors = []
    seen_names = set()

    # First pass: exact matches
    temp_authors = []
    for a in authors:
        norm = normalize_author_name(a)
        if norm not in seen_names:
            seen_names.add(norm)
            temp_authors.append(norm)

    # Second pass: fuzzy matching for similar names
    final_authors = []
    seen_initials = set()
    for author in temp_authors:
        parts = author.split()
        # Create a signature that combines last name and first initial
        if len(parts) >= 2:
            signature = f"{parts[0]} {parts[1][0]}"
        else:
            signature = author

        # Check if this is likely a duplicate
        if signature not in seen_initials:
            seen_initials.add(signature)
            final_authors.append(author)

    if final_authors:
        info["Author"] = ", ".join(final_authors)

    # Fallback to regex if custom model didn't find year
    if info["Year Made"] == "Not Found":
        year_match = re.search(r"\b(19|20)\d{2}\b", text)
        if year_match:
            info["Year Made"] = year_match.group(0)

    # Extract keywords from title using base model
    if info["Title"] != "Not Found":
        doc_title = nlp_base(info["Title"])
        keywords = set()
        for chunk in doc_title.noun_chunks:
            if 2 <= len(chunk.text.split()) <= 5:
                keywords.add(chunk.text)
        for token in doc_title:
            if token.pos_ in {"NOUN", "PROPN"} and not token.is_stop:
                keywords.add(token.text)

        common_words = {"method", "study", "studies", "information", "extraction", "science", "thesis", "project"}
        info["Keywords"] = ", ".join(sorted(kw for kw in keywords if kw.lower() not in common_words)) or "Not Found"

    return info