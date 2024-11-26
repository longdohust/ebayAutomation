*** Settings ***
Library    SeleniumLibrary
Variables    ../../Locators/Place_Order/cart_page_locator.py

*** Keywords ***
Click On Go To Checkout
    Click Element    ${go_to_checkout}

Verify The Lightbox Is Shown
    Page Should Contain    Continue as guest

Click On Continue As Guest
    Click Element    ${continue_as_guest}