*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/resources.robot
Documentation    This file is to test the registration functionality
Test Setup    Start Browser and Maximize    ${URL}    ${BROWSER}
Test Teardown    Close Browser Window
Suite Setup    Before Each Test Suite
Suite Teardown    After Each Test Suite
Default Tags    QOTSA
Force Tags    ALL_THE_YONG_DUDES

*** Variables ***
${BROWSER} =    chrome
${URL} =    https://www.thetestingworld.com/testings

*** Test Cases ***
Test Registration Form
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    ${username} =    Read Element Locator    Registration.username_textbox
    Input Text    name:fld_username    ${username}
    ${email} =    Read Element Locator    Registration.email_textbox
    Input Text    name:fld_email    ${email}
    ${password} =    Read Element Locator    Registration.password_textbox
    Input Text    name:fld_password    ${password}

Fetch Data
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    name:fld_username    P. Sherman
    Input Text    name:fld_email    psherman@shemail.com
    Input Text    name:fld_password    2444666668888888
    ${title} =    Get Title
    Log    ${title}
    ${speed} =    Get Selenium Speed
    Log    ${speed}
    ${signUpValue} =    Get Value    xpath://input[@type="submit"]
    Log    ${signUpValue}
    ${linkText} =    Get Text    class:displayPopup
    Log    ${linkText}
    Select From List By Index    name:sex    1
    ${sex} =    Get Selected List Value    name:sex
    Log    ${sex}
    ${sexText} =    Get Selected List Label    name:sex
    Log    ${sexText}
    ${allItems} =    Get List Items    name:sex
    Log    ${allItems}
    ${location} =  Get Location
    Log  ${location}
    ${source} =  Get Source
    Log  ${source}
    ${attribute} =  Get Element Attribute  name:fld_username  class
    Log  ${attribute}
    ${count} =  Get Element Count  class:field
    Log  ${count}

Tags & Control Execution Using Tags Test Case
    [Tags]    Smoke
    Input Text    name:fld_username    P. Sherman
    Input Text    name:fld_email    p.sherman@shemail.com
    Input Text    name:fld_password    2444666668888888

Tags & Control Execution Using Tags Second Test Case
    [Tags]    Smoke    Sanity
    Select Radio Button    add_type    office

Details With Keyword and Test Cases
    [Documentation]    This thest case is to check the registration functionality of the application
    [Timeout]    13s
    Input Text    name:fld_username    Bubbles
    Input Text    name:fld_email    p.sherman@shemail.com
    Input Text    name:fld_password    2444666668888888

Robot First Test Case With Resource Files
    ${result} =    Start Browser and Maximize    ${URL}    ${BROWSER}
    Log To Console    ${result}
    Input Text    name:fld_username    ${result}

Robot First Test Case
    Open Browser    ${URL}    ${BROWSER}
    maximize browser window
    Enter Username Password Email    SirClimbsALot    dylan.cremers@sogeti.com    2444666668888888
    select radio button    add_type    home
    select checkbox    name:terms
    click link    xpath://a[text()="Read Detail"]
    click link    class:close
    select from list by index    name:sex    1
    select from list by value    name:sex    2
    select from list by label    name:sex    Male
    click button    xpath://input[@type="submit"]