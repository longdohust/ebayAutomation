*** Settings ***
Library    SeleniumLibrary
Variables    ../../Locators/Search/find_store_result_page_locator.py

*** Keywords ***
Verify Find Store Result Page Is Shown
    Page Should Contain Element    ${find_store_result_text}

Click On The Second Store
    Click Element    ${second_store}