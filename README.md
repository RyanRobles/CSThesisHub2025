# CSThesisHub2025 - Setup Guide

## Pre-requisites

Before setting up the system, ensure you have the following installed:

- Python 3.10
- MySQL Server
- Tesseract OCR v5.5

## Setup Instructions

### 1. Extract Project Files
Unzip the CSThesisHub2025 project folder to your desired location.

### 2. Install Dependencies
1. Open terminal/command prompt
2. Navigate to the project folder:
   ```bash
   cd path/to/CSThesisHub2025
3. Install requirements
   ```bash
   pip install -r requirements.txt
   ```
### 3. MySQL Database Setup
1.  Start your MySQL server (XAMPP/WAMP/LAMP or standalone)

2.  Create a new database named flask_auth
    -  Alternative names can be used but require configuration changes in app.py
                                                                                                                                               
3.  Import the database schema:
   ```bash
    source CSThesisHub2025.sql
  ```
 - or use your MySQL client's import function

4.   Run the Application
- Start the flask development server:
    ``` bash
    python app.py
    ```
    - The system will be accessible at: http://127.0.0.1:5000/
