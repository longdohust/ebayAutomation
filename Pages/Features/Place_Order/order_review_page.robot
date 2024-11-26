*** Settings ***
Library    SeleniumLibrary
Variables    ../../Locators/Place_Order/order_review_page_locator.py

*** Keywords ***
Verify Order Review Page Is Shown
    Page Should Contain Element    "//*[@id='F']"

Input Firt Name
    [Arguments]    ${first_name_data}
    Input Text    ${first_name}    ${first_name_data}

Input Last Name
    [Arguments]    ${last_name_data}
    Input Text    ${last_name}    ${last_name_data}

Input Address 1
    [Arguments]    ${address_1_data}
    Input Text    ${address_1}    ${address_1_data}

Input City
    [Arguments]    ${city_input_data}
    Input Text    ${city_input}    ${city_input_data}

Input State
    [Arguments]    ${state_input_data}
    Input Text    ${state_input}    ${state_input_data}

Input Zip Code
    [Arguments]    ${zip_code_data}
    Input Text    ${zip_code}    ${zip_code_data}

Input Email
    [Arguments]    ${email_input_data}
    Input Text    ${email_input}    ${email_input_data}

Input Email Confirm
    [Arguments]    ${email_confirm}
    Input Text    ${email_confirm_input}    ${email_confirm}

Input Phone Number
    [Arguments]    ${phone_number_input_data}
    Input Text    ${phone_number_input}    ${phone_number_input_data}

Click On Done Button
    Click Element    ${done_btn}


Verify No Error In Ship To Section
    Wait Until Page Contains    Change
    Page Should Contain    Change