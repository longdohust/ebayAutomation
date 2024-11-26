*** Settings ***
Library    SeleniumLibrary
Library    XML
Variables    ../../Locators/Search/search_result_page_locators.py

*** Keywords ***
Verify Search Result Page Is Shown
    Page Should Contain    results for
Click On By It Now
    Click Element    ${by_it_now_btn}

Click On Condition
    Click Element    ${condition_btn}

Click On Open Box
    Click Element    ${open_box_con}

Click On First Item
    Click Element    ${first_item}

Verify First Item After Click On
    ${first_item_text} =    Get Text    ${first_item}
    Switch Window    locator=NEW
    Page Should Contain    ${first_item_text}

Verify At Least One Item Is Shown
    Element Should Not Contain    ${search_result_text}    0 results

