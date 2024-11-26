*** Settings ***
Library    SeleniumLibrary
Resource    ../Pages/Features/Common/home_page.robot
Resource    ../Pages/Features/Search/search_result_page.robot
Resource    ../Pages/Features/Common/product_page.robot
Resource    ../Pages/Features/Place_Order/cart_page.robot
Resource    ../Pages/Features/Place_Order/order_review_page.robot
Resource    ../Pages/Features/Search/advanced_search_page.robot
Resource    ../Pages/Features/Search/find_stores_page.robot
Resource    ../Pages/Features/Common/store_page.robot
Resource    ../Pages/Features/Search/find_store_result_page.robot

Variables    ../Tests/Test_data/test_data.py

Suite Setup   Run Keywords     Set Selenium Implicit Wait    5s
...    AND    Set Selenium Speed    0s
Suite Teardown    Close All Browsers

*** Variables ***
${URL}    https://www.ebay.com/

*** Test Cases ***
Test case 1
    [Teardown]    Close All Browsers
    #Step 1: Go to https://www.ebay.com/
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Verify Home Page Is Shown


    #Step 2: Search an keyword
    Input Text For Searching    ${search_keyword}
    Click On Search Button
    Verify Search Result Page Is Shown

    #Step 3: Select buy it now
    Click On By It Now

    #Step 4: Select 'Open box' in Condition
    Click On Condition
    Click On Open Box

    #Step 5: Select first item
    Click On First Item
    Verify First Item After Click On
    
    #Step 6: Click on Add To Cart
    Click On Add To Cart

    #Step 7: Select Go to Check Out
    Click On Go To Checkout
    Verify The Lightbox Is Shown
    
    #Step 8: Click Continue As Guest
    Click On Continue As Guest

    #Step 9: Input correct information in Ship to
    Input Firt Name    ${f_name}
    Input Last Name    ${l_name}
    Input Address 1    ${address}
    Input City    ${city}
    Input State    ${state}
    Input Zip Code    ${z_code}
    Input Email    ${email}
    Input Email Confirm    ${email}
    Input Phone Number    ${phone}

    #Step 10: Select Done
    Click On Done Button
    Verify No Error In Ship To Section

Test case 2
    [Teardown]    Close All Browsers

    #Step1: Go to https://www.ebay.com/
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Verify Home Page Is Shown
        
    #Step 2: Select Advanced Search
    Click On Search Advanced
    Verify Search Advanced Page Is Shown

    #Step 3: Fill all items of Enter keywords or item number
    Input Keyword For Advanced Searching    ${search_keyword}
    Input Exclude Word Box    ${exclude_search_keyword}
    #Select Art from category list
    Select From Category List    ${art_value}

    #Step 4: Select Search Including:
    Click On Title And Description In Search Including

    #Step 5: Input price
    Input Minimum Price    ${m_price}

    #Step 6: Select Buying Formart
    Select Buy It Now From Buying Format

    #Step 7: Select Condition
    Select New From Condition

    #Step 8: Select Show Results
    Select Sale Items From Show Results

    #Step 9: Select Shipping Options
    Select Free Shipping From Shipping Options

    #Step 10: Select Item Location
    Select Wordwide From Item Location

    #Step 11: Select Sellers
    Input Sellers Include    ${seller_name}

    #Step 12: Select Sort By
    Select From Sort By List    ${newly_listed}

    #Step 13: Click Clear Options
    Click Clear Options
    Verify All Check Boxes Of Search Including Section Are Unselected
    Verify All Text Boxes Are Empty
    Verify All Radio Buttons Of Buying Formart Section Are Unselected
    Verify All Radio Buttons Of Condition Section Are Unselected
    Verify All Check Boxes Of Show Results Section Are Unselected
    Verify All Check Boxes Of Shipping Options Section Are Unselected
    Verify All Radio Buttons Of Item Location Are Unselected
    Verify All Select Boxes Are In Default
    
    #Step 14: Repeat step 3-12
    Repeat All Filling Steps

    #Step 15: Click Search
    Click Search Button
    Verify At Least One Item Is Shown

Test case 3
    [Teardown]    Close All Browsers

    #Step1: Go to https://www.ebay.com/
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Verify Home Page Is Shown
        
    #Step 2: Select Advanced Search
    Click On Search Advanced
    Verify Search Advanced Page Is Shown
    
    #Step 3: Select find stores
    Click On Find Store
    Verify Find Stores Page Is Shown

    #Step 4: Enter a keyword to search
    Input Text To Find Stores    ${store_name}

    #Step 5: Click search button
    Click On Search Button In Find Stores
    Verify Find Store Result Page Is Shown

    #Step 6: Select a store
    Click On The Second Store

    #Step 7: Change your locaton to US
    Click On Category Button
    #Select USA from location list
    Select Location From Location List    ${usa_value}
    
*** Keywords ***
Repeat All Filling Steps
    #Step 3: Fill all items of Enter keywords or item number
    Input Keyword For Advanced Searching    ${search_keyword}
    Input Exclude Word Box    ${exclude_search_keyword}
    #Select Art from category list
    Select From Category List    ${art_value}

    #Step 4: Select Search Including:
    Click On Title And Description In Search Including

    #Step 5: Input price
    Input Minimum Price    ${m_price}

    #Step 6: Select Buying Formart
    Select Buy It Now From Buying Format

    #Step 7: Select Condition
    Select New From Condition

    #Step 8: Select Show Results
    Select Sale Items From Show Results

    #Step 9: Select Shipping Options
    Select Free Shipping From Shipping Options

    #Step 10: Select Item Location
    Select Wordwide From Item Location

    #Step 11: Select Sellers
    Input Sellers Include    ${seller_name}

    #Step 12: Select Sort By
    Select From Sort By List    ${newly_listed}