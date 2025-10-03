*** Settings ***
Library    QWeb
Library    QImage
Library    CopadoAI

*** Variables ***
${URL}                 https://your-application-url.com
${BROWSER}            chrome
${TEST_DATA_EMAIL}    test@example.com
${TEST_DATA_USER}     TestUser
${TIMEOUT}            10s

*** Test Cases ***
Basic Recording Test Template
    [Documentation]    Template test case ready for recording web application interactions
    [Tags]             recording    web    template
    
    # Test Setup - Browser initialization
    Open Browser       ${URL}    ${BROWSER}
    
    # === RECORDED STEPS WILL BE ADDED HERE ===
    # The Test Recorder will automatically insert recorded actions below
    # Common recorded actions include:
    # - ClickText         "Login"
    # - TypeText          "email"    ${TEST_DATA_EMAIL}
    # - TypeSecret        "password"    your_password
    # - DropDown          "Country"    "United States"
    # - ClickCheckbox     "I agree to terms"    on
    # - VerifyText        "Welcome"
    
    # Placeholder for first recorded action
    # [RECORDING PLACEHOLDER - Actions will be inserted here during recording]
    
    # Test Verification - Add verification steps
    # VerifyText        "Expected Result Text"
    
    [Teardown]    Close Browser

Login Flow Recording Template
    [Documentation]    Specific template for recording login workflows
    [Tags]             login    recording    authentication
    
    # Browser Setup
    Open Browser       ${URL}    ${BROWSER}
    
    # Navigate to login page (if needed)
    # GoTo              ${URL}/login
    
    # === LOGIN RECORDING SECTION ===
    # Record your login steps here:
    # 1. Click login button/link
    # 2. Enter username/email
    # 3. Enter password
    # 4. Submit form
    # 5. Verify successful login
    
    # Example structure (replace with recorded steps):
    # ClickText         "Sign In"
    # TypeText          "username"         ${TEST_DATA_EMAIL}
    # TypeSecret        "password"         your_password_here
    # ClickText         "Login"
    # VerifyText        "Dashboard"        # Verify successful login
    
    [Teardown]    Close Browser

Form Interaction Recording Template
    [Documentation]    Template for recording form filling and submission
    [Tags]             form    recording    data-entry
    
    # Setup
    Open Browser       ${URL}    ${BROWSER}
    
    # === FORM RECORDING SECTION ===
    # Record form interactions here:
    # - Text field entries
    # - Dropdown selections
    # - Checkbox/radio button selections
    # - Form submission
    
    # Common form recording patterns:
    # TypeText          "First Name"       "John"
    # TypeText          "Last Name"        "Doe"
    # DropDown          "Title"            "Mr."
    # ClickCheckbox     "Newsletter"       on
    # ClickText         "Submit"
    # VerifyText        "Form submitted successfully"
    
    [Teardown]    Close Browser

*** Keywords ***
# Custom keywords for reusable actions can be added here
Setup Test Environment
    [Documentation]    Reusable setup keyword for consistent test initialization
    Open Browser       ${URL}    ${BROWSER}

Verify Page Load
    [Documentation]    Common verification for page loading
    [Arguments]        ${expected_text}
    VerifyText         ${expected_text}    timeout=${TIMEOUT}

Navigate To Section
    [Documentation]    Reusable navigation keyword
    [Arguments]        ${section_name}
    ClickText          ${section_name}
    # Add verification as needed
