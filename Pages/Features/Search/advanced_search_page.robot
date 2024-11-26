*** Settings ***
Library    SeleniumLibrary
Library    Collections
Variables    ../../Locators/Search/advanced_search_page_locator.py
Variables    ../../../Tests/Test_data/test_data.py

*** Keywords ***
Verify Search Advanced Page Is Shown
    Page Should Contain    Advanced search
Input Keyword For Advanced Searching
    [Arguments]    ${keyword}
    Input Text    ${enter_keyword_box}    ${keyword}

Input Exclude Word Box
    [Arguments]    ${exclude_word}
    Input Text    ${exclude_word_box}    ${exclude_word}

Select From Category List
    [Arguments]    ${value}
    Select From List By Value   ${category_selection}    ${value}

Click On Title And Description In Search Including
    Select Checkbox   ${title_and_description}

Input Minimum Price
    [Arguments]    ${m_price}
    Input Text    ${min_price}    ${m_price}

Select Buy It Now From Buying Format
    Click Element    ${buy_it_now_radio}

Select New From Condition
    Click Element    ${new_radio}

Select Sale Items From Show Results
    Select Checkbox    ${sale_items}

Select Free Shipping From Shipping Options
    Select Checkbox    ${free_shipping_checkbox}

Select Wordwide From Item Location
    Click Element    ${wordwide_radio}

Input Sellers Include
    [Arguments]    ${name}
    Input Text    ${sellers_include}    ${name}

Select From Sort By List
    [Arguments]    ${value}
    Select From List By Value    ${sort_by_selection}    ${value}

Click Clear Options
    Click Element    ${clear_option}

Click Search Button
    Click Element    ${search_btn_adv}


Click On Find Store
    Click Element    ${find_stores}
    
Verify All Check Boxes Of Search Including Section Are Unselected
    ${list}=    Get WebElements    ${search_including_check_boxes}
    FOR    ${element}    IN    @{list}
        Checkbox Should Not Be Selected    ${element}
    END

Verify All Text Boxes Are Empty
    ${list}=    Get WebElements    ${all_text_boxes}
    FOR    ${element}    IN    @{list}
        Textfield Value Should Be    ${element}    ${EMPTY}
    END

Verify All Radio Buttons Of Buying Formart Section Are Unselected
    ${list}=    Get WebElements    ${buying_format_all_radio_btn}
    FOR    ${element}    IN    @{list}
        ${name}=    SeleniumLibrary.Get Element Attribute    ${element}    name
        Radio Button Should Not Be Selected    ${name}
    END

Verify All Radio Buttons Of Condition Section Are Unselected
    ${list}=    Get WebElements    ${condition_all_radio_btn}
    FOR    ${element}    IN    @{list}
        ${name}=    SeleniumLibrary.Get Element Attribute    ${element}    name
        Radio Button Should Not Be Selected    ${name}
    END

Verify All Check Boxes Of Show Results Section Are Unselected
    ${list}=    Get WebElements    ${show_results_all_checkbox}
    FOR    ${element}    IN    @{list}
        Checkbox Should Not Be Selected    ${element}
    END

Verify All Check Boxes Of Shipping Options Section Are Unselected
    ${list}=    Get WebElements    ${shipping_options_all_checkbox}
    FOR    ${element}    IN    @{list}
        Checkbox Should Not Be Selected    ${element}
    END


Verify All Radio Buttons Of Item Location Are Unselected
    ${list}=    Get WebElements    ${item_location_all_radio_btn}
    FOR    ${element}    IN    @{list}
        ${name}=    SeleniumLibrary.Get Element Attribute    ${element}    name
        Radio Button Should Not Be Selected    ${name}
    END

Verify All Select Boxes Are In Default
    ${list}=    Get WebElements    ${all_select_box}
    FOR    ${element}    IN    @{list}
        ${value}=    Get Selected List Value    ${element}
        ${default_value}=    SeleniumLibrary.Get Element Attribute    ${element}    data-default-value
        Should Be Equal    ${value}    ${default_value}
    END