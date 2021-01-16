*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/resources.robot
Documentation    This is an example test while creating a batch file
#Test Setup    Start Browser And Maximize
Test Teardown    Close Browser Window
Suite Setup    Before Each Test Suite
Suite Teardown    After Each Test Suite
Default Tags    default
Force Tags    forced
Library    ../../ExternalKeywords/Locators.py

*** Variables ***
${BROWSER}    Chrome
${URL}    https://www.thetestingworld.com/testings

*** Test Cases ***
First Batch Test Case
    [Tags]    batch
    Open Browser    ${URL}    ${BROWSER}
    ${username} =    Read Element Locator    Registration.username_textbox
    Input Text    Name:fld_username   ${username}

Validate Login and Logout
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    name:fld_username    SirClimbsALot
    Input Text    name:fld_email    dylan.cremers@sogeti.com
    Input Text    name:fld_password    24446666688888888
    Press Keys    name:fld_cpassword    2444666668888888
    Press Keys    xpath://input[@type="submit"]    \\13
    Capture Page Screenshot    ../../Snapshot/login.png
    Execute Javascript    window.scrollTo(0, window.innerHeight)
    Sleep    10s
    Open Context Menu    class:displayPopup
    Sleep    10s
    Open Browser    https://www.google.com    chrome
    Maximize Browser Window
    Go To    https://www.udemy.com
    ${urlA} =    Get Location
    Log To Console    ${urlA}
    Wait Until Page Contains    IT and Software
    Wait Until Page Contains Element    xpath:(//h2[text()="IT and Software"]/following-sibling::div//a)[1]
    ${text} =    get text    xpath:(//h2[text()="IT and Software"]/following-sibling::div//a)[1]
    Wait Until Element Contains    xpath:(//h2[text()="IT and Software"]/following-sibling::div//a)[1]   AWS Certification
    Double Click Element    xpath:(//h2[text()="IT and Software"]/following-sibling::div//a)[1]
    #Sleep    10s
    Wait Until Page Contains Element    xpath://div[@class="carousel--container--22Ab7"]//a[contains(@id,"popper-trigger--45")]
    Mouse Down    xpath://div[@class="carousel--container--22Ab7"]//a[contains(@id,"popper-trigger--45")]
    Mouse Up    xpath://div[@class="carousel--container--22Ab7"]//a[contains(@id, "popper-trigger--45")]
    Wait Until Page Contains Element    xpath://a[@href="/cart/"]
    Mouse Over    xpath://a[@href="/cart/"]
    Sleep    10s
    Go Back
    ${urlB} =    Get Location
    Log To Console    ${urlB}
    #Close All Browsers

Login With Timeouts
    ${speed} =    Get Selenium Speed
    Log To Console    ${speed}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout    20s
    ${tm} =    Get Selenium Timeout
    Log To Console    ${tm}
    Wait Until Page Contains    Testing
    Sleep    10s
    Set Selenium Speed    5s
    ${defaultT} =    Get Selenium Implicit Wait
    Log To Console    ${defaultT}
    Set Selenium Implicit Wait    20s
    ${defaultT} =    Get Selenium Implicit Wait
    Log To Console    ${defaultT}
    Input Text    name:fld_username    SirClimbsALot
    Input Text    name:fld_email    dylan.cremers@sogeti.com
    Input Text    name:fld_password    2444666668888888
    ${speed} =    Get Selenium Speed
    Log To Console    ${speed}

*** Keywords ***