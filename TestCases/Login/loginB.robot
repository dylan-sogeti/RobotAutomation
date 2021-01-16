*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL} =    https://www.patreon.com/europe

*** Test Cases ***
Login Test
    open browser    ${URL}    Chrome
    maximize browser window
    page should contain    creative
    page should not contain    kreative
    element text should be    xpath:(//div[@id="renderPageContentWrapper"]//h1[@color="light"])[1]    The system for creative people is broken
    element text should not be    xpath:(//div[@id="renderPageContentWrapper"]//h1[@color="light"])[1]    The system for creative people works perfect
    element should contain    xpath:(//div[@id="reactTarget"]//span[contains(@class,"flvlvi")])[3]    predictable income
    element should not contain    xpath:(//div[@id="reactTarget"]//span[contains(@class,"flvlvi")])[3]    variable income
    click element    link:Log in
    title should be    Log In | Patreon
    wait until page contains element    id:email
    page should contain textfield    id:email
    page should not contain textfield    id:e_mail
    input text    id:email    p.sherman@shemail.com
    element should be enabled    id:password
   # click element    id:user_session_remember_me
    #checkbox should not be selected    id:user_session_remember_me
    #select checkbox    id:user_session_remember_me
    #checkbox should be selected    id:user_session_remember_me
    element should be visible    xpath://button[@type="submit"]