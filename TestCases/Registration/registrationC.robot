*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/resources.robot
Documentation    This file contains testcases for testing the basic functionalities
Test Setup    Start Browser and Maximize    ${URL}    ${BROWSER}
Test Teardown    Close Browser Window
Default Tags    QOTSA

*** Variables ***
${BROWSER} =    chrome
${URL} =    https://www.thetestingworld.com/testings

*** Test Cases ***
Tags & Control Execution Using Tags Test Case third file
    [Documentation]    This test case is to check the registration functionality of the application
    [Timeout]    13s
    [Tags]    Sanity
    Input Text    name:fld_username    P. Sherman
    Input Text    name:fld_email    p.sherman@shemail.com
    Input Text    name:fld_password    2444666668888888

Tags & Control Execution Using Tags Second Test Case third file
    [Tags]    Regression    Testing
    Select Radio Button    add_type    office