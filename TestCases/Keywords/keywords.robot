*** Settings ***
Library    SeleniumLibrary
Library    ../../ExternalKeywords/UserKeywords.py
Resource    ../../Resources/resources.robot

*** Test Cases ***
BDD Test Case
    Given Start Browser And Maximize    https://reddit.com    chrome
    When Create Folder At Runtime    MEOK    FUN
    Then Concatenate Username And Password    psherman    ohcommoneileen