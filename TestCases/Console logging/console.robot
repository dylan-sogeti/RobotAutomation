*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Test Cases ***
Writing Code In Console
    ${var1} =    Set Variable    Hi!
    log to console    ${var1}
    @{list1} =    create list    I    thought    it    didn't    count
    ${listLength} =    get length    ${list1}
    log to console    ${listLength}
    ${listData} =    get from list    ${list1}    3
    log to console    ${listData}
    FOR    ${i}    IN RANGE    0    10
        log to console    ${i}
    END

    FOR    ${i}    IN    @{list1}
        log to console    ${i}
    END

    ${keyVar} =    set variable    log to console
    run keyword    ${keyVar}    dylan.cremers@sogeti.com
    ${var2} =    set variable    NO
    run keyword if    "${var2}" == "YES"    log to console    Value Found
    run keyword if    "${var2}" == "NO"    log to console    Value Not Found