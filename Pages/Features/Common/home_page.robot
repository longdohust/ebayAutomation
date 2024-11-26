*** Settings ***
Library    SeleniumLibrary
Variables    ../../Locators/Common/home_page_locators.py

    

*** Keywords ***
Input Text For Searching
    [Arguments]    ${item_name}
    Input Text    ${search_box}    ${item_name}

Click On Search Button
    Click Element    ${search_button}

Verify Home Page Is Shown
    Title Should Be    Electronics, Cars, Fashion, Collectibles & More | eBay
    
Click On Search Advanced
    Click Element    ${search_advanced}
    