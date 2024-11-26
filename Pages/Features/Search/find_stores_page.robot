*** Settings ***
Library    SeleniumLibrary
Variables    ../../Locators/Search/find_stores_page_locator.py

*** Keywords ***
Verify Find Stores Page Is Shown
    Page Should Contain    Enter store name or keywords

Input Text To Find Stores
    [Arguments]    ${store_name}
    Input Text    ${find_stores_text_input}    ${store_name}
    
Click On Search Button In Find Stores
    Click Element    ${find_store_search_btn}

