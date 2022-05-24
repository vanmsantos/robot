*** Settings ***
Resource         base.robot

Test Setup        New Session
Test Teardown     Close Session

*** Test Cases ***
selection option using selection of text from list atraves da classe 
    Go To                        ${url}/dropdown
    Select From List By Label    class:avenger-list    Scott Lang
    Sleep                        5s

Selection option using value from list atraves do id 
    Go To                        ${url}/dropdown
    Select From List By Value    id:dropdown            6
    Sleep                        5s



