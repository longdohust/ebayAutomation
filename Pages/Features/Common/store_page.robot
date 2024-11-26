*** Settings ***
Library    SeleniumLibrary
Variables    ../../Locators/Common/store_page_locator.py
*** Keywords ***
Click On Category Button
    Click Element    ${category_btn}

Select Location From Location List
    [Arguments]    ${location_value}
    Wait Until Page Contains Element    ${location_list}
    Select From List By Value    ${location_list}    ${location_value}

