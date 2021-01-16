*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${VAR1} =    https://www.thetestingworld.com
${VAR2} =    https://www.udemy.com
${VAR3} =    https://robotframework.org

*** Test Cases ***
Testing Window Handling
    open browser    ${VAR1}    Chrome
    maximize browser window
    open browser    ${VAR2}    Chrome
    maximize browser window
    switch browser    1
    ${urlA} =    get location
    log to console    ${urlA}
    click element    xpath://a[text()="Login"]
    switch browser    2
    ${urlB} =    get location
    log to console    ${urlB}
    input text    xpath://input[@name='q']    Python
    open browser    ${VAR3}    Chrome
    maximize browser window
    click element    xpath://a[text()="User Guide"]
    select window    Robot Framework
    ${urlC} =    get location
    log to console    ${urlC}
    select window    Robot Framework documentation
    ${urlD} =    get location
    log to console    ${urlD}
    @{list} =    get window handles
    FOR    ${win}    IN    @{list}
        log to console    ${win}
        select window    ${win}
        ${urlE} =    get location
        log to console    ${urlD}
    END
    close all browsers