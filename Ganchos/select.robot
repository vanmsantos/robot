*** Settings ***
Resource         base.robot

Test Setup        New Session
Test Teardown     Close Session

*** Test Cases ***
selection option using selection of text from combobox'list atraves da classe e validar pelo value
    Go To                        ${url}/dropdown
    Select From List By Label    class:avenger-list           Scott Lang
    ${select}=                    Get Selected List Value      class:avenger-list
    Should Be Equal              ${select}                    7
    Sleep                        5s

Selection option using value from combobox'list atraves do id e validar pelo texto
    Go To                        ${url}/dropdown
    Select From List By Value    id:dropdown                  6
    ${select}=                   Get Selected List Label      id:dropdown
    Should Be Equal              ${select}                    Loki
    Sleep                        5s



