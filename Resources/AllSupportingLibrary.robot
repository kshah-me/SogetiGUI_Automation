*** Settings ***
Library  SeleniumLibrary
Library    Collections
Library    String
Library    RequestsLibrary
Library   JSONLibrary
Library   DateTime
Library   OperatingSystem
Variables	../Configuration/config.py
Variables	../POM/Automation Page WebElement.py
Variables	../POM/Home Page WebElement.py
Resource	../Resources/Common keywords.robot
Resource	../Step definition/Steps.robot
Library 	../Utility/Utility.py

