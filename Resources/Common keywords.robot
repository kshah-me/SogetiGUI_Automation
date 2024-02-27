*** Settings ***
Resource	../Resources/AllSupportingLibrary.robot

*** Keywords ***
Launch the browser and open url
    Open Browser	${Url}	 ${Browser_name}
    Maximize Browser Window
    Set Selenium Implicit Wait    10 seconds
    Set Selenium Speed    1 seconds
    Wait Until Page Contains Element  ${Cookies_acceptance}
    Click Element  ${Cookies_acceptance}


Element Highlight
    [Arguments]    ${Service_link_under_menu_items}
    sleep    3s
    Highlight Elements  ${Service_link_under_menu_items}  duration=500ms    width=4px    style=solid    color=\#FF00FF
    sleep    3s

Convert rgba code to hex code
    [Arguments]    ${userinput}
    ${Colorcode_without_rgba}  Replace String	 ${userinput}  rgba( 	${EMPTY}
    ${Colorcode_without_bracket}  Replace String	 ${Colorcode_without_rgba}  ) 	${EMPTY}
    ${Colorcode_without_space}    Replace String    ${Colorcode_without_bracket}    ${SPACE}	${EMPTY}
    ${Colorcode_number}   Split String   ${Colorcode_without_space}    ,
    ${stripped0}=	Convert To Integer    ${Colorcode_number}[0]
    ${stripped1}=	Convert To Integer    ${Colorcode_number}[1]
    ${stripped2}=	Convert To Integer    ${Colorcode_number}[2]
    ${stripped3}=	Convert To Integer    ${Colorcode_number}[3]
    ${Colorhex_code}    convert_rgba_to_hex  ${stripped0}  ${stripped1}  ${stripped2}  ${stripped3}
    RETURN    ${Colorhex_code}


Close the browser
    Close Browser
