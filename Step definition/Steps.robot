*** Settings ***
Resource	../Resources/AllSupportingLibrary.robot

*** Keywords ***
User mousehover on Service link
    #Element Highlight    ${Service_link_under_menu_items}
    ${elements}    Get Webelement    ${Service_link_under_menu_items}
    ${Colorcode_of_Service_link_before_navigating_to_automation_page}    Call Method    ${elements}    value_of_css_property    color
    ${ColorHexcode_Servicelink_before_automationpage}  Convert rgba code to hex code  ${Colorcode_of_Service_link_before_navigating_to_automation_page}
    Mouse Over    ${Service_link_under_menu_items}
    set global variable    ${ColorHexcode_Servicelink_before_automationpage}
    log    ${ColorHexcode_Servicelink_before_automationpage}


Click on Automation sublink
    ${elements}    Get Webelement    ${Automation_sublink_under_Service_link}
    ${Colorcode_of_Automation_link_before_navigating_to_automation_page}    Call Method    ${elements}    value_of_css_property    color
    ${ColorHexcode_Automationlink_before_automationpage}    Convert rgba code to hex code  ${Colorcode_of_Automation_link_before_navigating_to_automation_page}
    set global variable    ${ColorHexcode_Automationlink_before_automationpage}
    Click Element    ${Automation_sublink_under_Service_link}
    log   ${ColorHexcode_Automationlink_before_automationpage}


Verify Automation page should be open
    ${Page_title}    Get Title
    Should Be Equal  ${Page_title}    Automation
    Page Should Contain Element  ${Text_Automation}


User again mousehover on Service link
    Mouse Over    ${Service_link_under_menu_items}



Verify Service link and Automation link are highlited
    ${elements}    Get Webelement    ${Service_link_under_menu_items}
    ${Colorcode_of_Service_link_after_navigating_to_automation_page}    Call Method    ${elements}    value_of_css_property    color
    ${ColorHexcode_Service_link_after_automation_page}    Convert rgba code to hex code  ${Colorcode_of_Service_link_after_navigating_to_automation_page}
    log   ${ColorHexcode_Servicelink_before_automationpage}
    log   ${ColorHexcode_Service_link_after_automation_page}
    Should Not Be Equal    ${ColorHexcode_Servicelink_before_automationpage}    ${ColorHexcode_Service_link_after_automation_page}
    ${elements}    Get Webelement    ${Automation_sublink_under_Service_link}
    ${Colorcode_of_Automation_link_after_navigating_to_automation_page}    Call Method    ${elements}    value_of_css_property    color
    ${ColorHexcode_Automation_link_after_automation_page}    Convert rgba code to hex code  ${Colorcode_of_Automation_link_after_navigating_to_automation_page}
    log   ${ColorHexcode_Automationlink_before_automationpage}
    log    ${ColorHexcode_Automation_link_after_automation_page}
    Should Not Be Equal    ${ColorHexcode_Automationlink_before_automationpage}    ${ColorHexcode_Automation_link_after_automation_page}


Fill and submit Contact us form with datadriven
    [Arguments]    ${fName}  ${lName}  ${email}  ${Phone}  ${Company}  ${Country}  ${Message}
    Scroll Element Into View  ${Header_Contact_us}
    Input text  ${Textbox_FirstName_Automation_Page}  ${fName}
    Input text  ${Textbox_LastName_Automation_Page}  ${lName}
    Input text  ${Textbox_Email_Automation_Page}  ${email}
    Input text  ${Textbox_Phone_Automation_Page}   ${Phone}
    Input text  ${Textbox_Company_Automation_Page}   ${Company}
    Select From List By Value  ${Dropdown_Country_Automation_Page}    ${Country}
    Input text  ${Textarea_Message_Automation_Page}    ${Message}
    Click Element  ${Checkbox_I_agree_Automation_Page}
    Select Frame  ${Iframe_recaptcha}
    Click Element  ${Checkbox_I_am_not_robot_Automation_Page}



Fill and submit Contact us form
    Scroll Element Into View  ${Header_Contact_us}
    Input text  ${Textbox_FirstName_Automation_Page}  Krishna
    Input text  ${Textbox_LastName_Automation_Page}  Shah
    Input text  ${Textbox_Email_Automation_Page}  shahkrishna479@gmail.com
    Input text  ${Textbox_Phone_Automation_Page}   15214663972
    Input text  ${Textbox_Company_Automation_Page}   Sogati
    Select From List By Value  ${Dropdown_Country_Automation_Page}    Germany
    Input text  ${Textarea_Message_Automation_Page}    Hello Team
    Click Element  ${Checkbox_I_agree_Automation_Page}
    Select Frame  ${Iframe_recaptcha}
    Click Element  ${Checkbox_I_am_not_robot_Automation_Page}
    Click Element  ${Button_Submit_Automation_Page}

User click on Worldwide Dropdown
    Click Element  ${Worldwide_link_Page_header}


Verify the countries name as link should be displayed and links should be working
    ${Get_count_of_countries_under_Worldwide_link}    Get Element Count  ${List_of_countries_under_Worldwide_link}
    FOR    ${i}   IN RANGE  1    ${Get_count_of_countries_under_Worldwide_link}+1
       ${Location_Name}    Get Text    (//div[@class='country-list']/ul/li/a)[${i}]
       ${Location_name_link}  Get Element Attribute    (//div[@class='country-list']/ul/li/a)[${i}]    href
       Run keyword if    '${Location_Name}'=='BELGIUM'  Country specific Sogeti links are working  ${Location_name_link}   ${Location_Name}
       ...  ELSE IF   '${Location_Name}'=='FINLAND'  Country specific Sogeti links are working  ${Location_name_link}   ${Location_Name}
       ...  ELSE IF   '${Location_Name}'=='FRANCE'  Country specific Sogeti links are working  ${Location_name_link}   ${Location_Name}
       ...  ELSE IF   '${Location_Name}'=='GERMANY'  Country specific Sogeti links are working  ${Location_name_link}   ${Location_Name}
       ...  ELSE IF   '${Location_Name}'=='IRELAND'  Country specific Sogeti links are working  ${Location_name_link}   ${Location_Name}
       ...  ELSE IF   '${Location_Name}'=='LUXEMBOURG'  Country specific Sogeti links are working  ${Location_name_link}   ${Location_Name}
       ...  ELSE IF   '${Location_Name}'=='NETHERLANDS'  Country specific Sogeti links are working  ${Location_name_link}   ${Location_Name}
       ...  ELSE IF   '${Location_Name}'=='NORWAY'  Country specific Sogeti links are working  ${Location_name_link}   ${Location_Name}
       ...  ELSE IF   '${Location_Name}'=='SPAIN'  Country specific Sogeti links are working  ${Location_name_link}   ${Location_Name}
       ...  ELSE IF   '${Location_Name}'=='SWEDEN'  Country specific Sogeti links are working  ${Location_name_link}   ${Location_Name}
       ...  ELSE IF   '${Location_Name}'=='UK'  Country specific Sogeti links are working  ${Location_name_link}   ${Location_Name}
       ...  ELSE IF   '${Location_Name}'=='USA'  Country specific Sogeti links are working  ${Location_name_link}   ${Location_Name}
    END


Country specific Sogeti links are working
    [Arguments]  ${Sogeti_location_links}  ${Location_Name}
    Open Browser    ${Sogeti_location_links}    ${Browser_name}
    Maximize Browser Window
    ${Cookies_acceptance_count}    Get Element Count  ${Cookies_acceptance}
    run keyword if    '${Cookies_acceptance_count}'=='1'    Click Element    ${Cookies_acceptance}
    ${Page_title}    Get Title
    run keyword if    '${Location_Name}'=='BELGIUM'    Should Contain  ${Page_title}  Sogeti Belgium
    ...  ELSE IF   '${Location_Name}'=='FINLAND'  Should Contain  ${Page_title}  Sogeti | Etusivu
    ...  ELSE IF   '${Location_Name}'=='FRANCE'  Should Contain  ${Page_title}  Sogeti France
    ...  ELSE IF   '${Location_Name}'=='GERMANY'  Should Contain  ${Page_title}  Sogeti Deutschland GmbH
    ...  ELSE IF   '${Location_Name}'=='IRELAND'  Should Contain  ${Page_title}  Sogeti Ireland
    ...  ELSE IF   '${Location_Name}'=='LUXEMBOURG'  Should Contain  ${Page_title}  Sogeti Luxembourg
    ...  ELSE IF   '${Location_Name}'=='NETHERLANDS'  Should Contain  ${Page_title}  We Make Technology Work | Sogeti
    ...  ELSE IF   '${Location_Name}'=='NORWAY'  Should Contain  ${Page_title}  Sogeti Norge
    ...  ELSE IF   '${Location_Name}'=='SPAIN'  Should Contain  ${Page_title}  Sogeti España
    ...  ELSE IF   '${Location_Name}'=='SWEDEN'  Should Contain  ${Page_title}  Sogeti Sverige
    ...  ELSE IF   '${Location_Name}'=='UK'  Should Contain  ${Page_title}  Sogeti UK
    ...  ELSE IF   '${Location_Name}'=='USA'  Should Contain  ${Page_title}  Sogeti USA
    Close Browser
    Switch Browser    1