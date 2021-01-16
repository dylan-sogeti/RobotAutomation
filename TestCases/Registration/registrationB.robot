*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/resources.robot
Documentation    This files contains testcases for testing the basic functionalities
Test Setup    Start Browser and Maximize    ${URL}    ${BROWSER}
Test Teardown    Close Browser Window
Default Tags    QOTSA
Force Tags    ALL_THE_YONG_DUDES

*** Variables ***
${BROWSER}    Chrome
${URL}    https://www.thetestingworld.com/testings

*** Test Cases ***
Tags & Control Execution Using Tags Test Case second file
    [Documentation]    This test case is to check the registration functionality of the application
    [Timeout]    13s
    [Tags]    Smoke
    Input Text    name:fld_username    P. Sherman
    Input Text    name:fld_email    p.sherman@shemail.com
    Input Text    name:fld_password    24446666888888

Tags & Control Execution Using Tags Second Test Case second file
    [Tags]    Regression
    Select Radio Button    add_type    office