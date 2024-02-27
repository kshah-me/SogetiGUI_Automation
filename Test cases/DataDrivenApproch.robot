*** Settings ***
Documentation       Sogeti GUI Testcases Assignment Datadriven scenarios
Library    DataDriver    ../TestData/Userdata.csv    sheet_name=Sheet1
Resource	../Resources/AllSupportingLibrary.robot
Test Setup    Background
Test Teardown    Close Browser
Test Template    Scenario: Fill the Contact us form on Auomtation page
*** Keywords ***
Background
    Given Launch the browser and open url

*** Test Cases ***
DataDrivenApproch using ${fName} and ${lName} and ${email} and ${Phone} and ${Company} and ${Country} and ${Message}

*** Keywords ***
Scenario: Fill the Contact us form on Auomtation page
    [Arguments]    ${fName}  ${lName}  ${email}  ${Phone}  ${Company}  ${Country}  ${Message}
     [Documentation]  In this test cases the we are trying to achive datadriven approch
     ...    Test Data is available in csv file and getting readed by FataDriver library
    [Tags]    Regression
    When User mousehover on Service link
    And Click on Automation sublink
    And Fill and submit Contact us form with datadriven   ${fName}  ${lName}  ${email}  ${Phone}  ${Company}  ${Country}  ${Message}