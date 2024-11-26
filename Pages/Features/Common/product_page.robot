*** Settings ***
Library    SeleniumLibrary
Variables    ../../Locators/Common/product_page_locator.py

*** Keywords ***
Verify Product Page Is Shown
    Page Should Contain    Item specifics

Click On Add To Cart
    Click Element    ${add_to_cart}