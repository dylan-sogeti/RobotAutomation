*** Settings ***
Library    SeleniumLibrary
#Library    ../ExternalKeywords/UserKeywords.py
Library    ../ExternalKeywords/Locators.py

*** Keywords ***
Start Browser and Maximize
    [Documentation]    This keyword is for starting the browser and maximizing its window
    [Arguments]    ${userURL}    ${inputBrowser}
    Open Browser    ${userURL}    ${inputBrowser}
    Maximize Browser Window
    ${title} =    Get Title

    [Return]    ${title}

Close Browser Window
    ${title} =    Get Title
    Log To Console    ${title}
    Close Browser

Before Each Test Suite
    Log To Console    Test Suite Started

After Each Test Suite
    Log To Console    Test Suite Ended

Read Element Locator
    [Arguments]    ${jsonPath}
    ${result} =    readLocatorFromJSON    ${jsonPath}
    [Return]    ${result}

Create Folder At Runtime
    [Arguments]    ${foldername}    ${subfoldername}
    create_folder    ${foldername}
    create_sub_folder    ${foldername}    ${subfoldername}
    Log To Console    "Task Failed Successfully"

Concatenate Username And Password
    [Arguments]    ${username}    ${password}
    ${result} =    concatenate_login_info    ${username}    ${password}
    Log To Console    ${result}

Enter Username Password Email
    [Arguments]    ${username}    ${email}    ${password}
    input text    name:fld_username    ${username}
    input text    xpath://input[@name="fld_email"]    ${email}
    input text    name:fld_password    ${password}