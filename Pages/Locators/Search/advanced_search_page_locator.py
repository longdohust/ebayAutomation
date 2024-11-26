#Find stores
find_stores = "(//*[@class = 'fake-menu__item'])[5]"

#Enter keywords or item number
enter_keyword_box = "//*[@id='_nkw']"
exclude_word_box = "//*[@id='_ex_kw']"
category_selection = "//*[@id='s0-1-17-4[0]-7[3]-_sacat']"

#Search including
search_including_check_boxes = "//*[@class='adv-fieldset__searchIncluding']//input"
title_and_description = "//*[@id='s0-1-17-5[1]-[0]-LH_TitleDesc']"

#Price
min_price = "//*[@id='s0-1-17-5[2]-@range-comp[]-@range-textbox[]-textbox']"
max_price = "//*[@id='s0-1-17-5[2]-@range-comp[]-@range-textbox[]_1-textbox']"

#Buying format
buying_format_all_radio_btn = "//*[@class='adv-fieldset__format']//span//input"
buy_it_now_radio = "//*[@id='s0-1-17-6[3]-[2]-LH_BIN']"

#Condition
condition_all_radio_btn = "//*[@class='adv-fieldset__condition']//span//input"
new_radio = "//*[@id='s0-1-17-6[4]-[0]-LH_ItemCondition']"

#Show results
sale_items = "//*[@id='s0-1-17-5[5]-[4]-LH_SaleItems']"
show_results_all_checkbox = "//*[@class='adv-fieldset__showResults']//input[@type='checkbox']"

#Shipping options
free_shipping_checkbox = "//*[@id='s0-1-17-5[6]-[0]-LH_FS']"
shipping_options_all_checkbox = "//*[@class='adv-fieldset__shippingOption']//input"

#Item location
wordwide_radio = "//*[@id='s0-1-17-6[7]-[3]-LH_PrefLoc']"
item_location_all_radio_btn = "//*[@class='adv-fieldset__location']//input[@type='radio']"

#Sellers
sellers_include = "//*[@id='s0-1-17-7[8]-_sasl']"

#Sort by
sort_by_selection = "//*[@id='s0-1-17-8[9]-1[0]-_sop']"

#Clear options
clear_option = "//*[@class='nav-link']"

#Search button
search_btn_adv = "(//*[@class='btn btn--primary'])[2]"

#All textbox
all_text_boxes = "//*[@class='textbox' or @class = 'textbox field__control textbox' or @Class = 'textbox field__control']//input"

#All select box
all_select_box = "//select[contains(@id,'s0')]"
