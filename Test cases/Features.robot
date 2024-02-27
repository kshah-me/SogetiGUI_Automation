*** Settings ***
Documentation       Sogeti GUI Testcases Assignment
Resource	../Resources/AllSupportingLibrary.robot
Test Setup    Background
Test Teardown    Close Browser

*** Keywords ***
Background
    Given Launch the browser and open url

*** Test Cases ***

Scenario: Navigation to Auomtation page from Service link on home page and
    [Tags]    SMOKE
    When User mousehover on Service link
    And Click on Automation sublink
    Then Verify Automation page should be open
    When User again mousehover on Service link
    Then Verify Service link and Automation link are highlited

Scenario: Fill the Contact us form on Auomtation page
     [Documentation]  In this test cases the last step "Verification of thankyou message" is possible with human interaction
     ...  As we selenium does not support to automate reCAPTURE feature
     ...    hence submission of applocation is with human interaction possible
    [Tags]    Regression
    When User mousehover on Service link
    And Click on Automation sublink
    And Fill and submit Contact us form
    Then Verify Thankyou message on Automation page should be displayed

Scenario: Country specific Sogeti links are working
    When User click on Worldwide Dropdown
    Then Verify the countries name as link should be displayed and links should be working