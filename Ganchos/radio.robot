*** Settings ***
Resource        base.robot

Test Setup        New Session
Test Teardown     Close Session

*** Test Cases ***
Selection radiobotton por id
    Go To                            ${url}/radios
    Select Radio Button              movies        cap
    Radio Button Should Be Set To    movies        cap
    Sleep    5s

Selection radiobotton por value
    Go To                            ${url}/radios
    Select Radio Button              movies    guardians
    Radio Button Should Be Set To    movies    guardians
    Sleep    5s  