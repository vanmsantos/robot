*** Settings ***
Resource         base.robot

Test Setup        New Session
Test Teardown     Close Session

*** Test Cases ***
verifica o valor ao informar o numero da linha
    Go To                       ${url}/tables
    Table Row Should Contain    id:actors    1    $ 10.000.000
    Sleep                       5

verifica o valor ao informar o numero da linha com falha pois na linha 1 nao tem vindiesel, vindiesel esta na linha 2
    Go To                       ${url}/tables
    Table Row Should Contain    id:actors    1    @vindiesel
    Sleep                       5

Descobre a linha pelo texto chave e valida os demais valores
    Go To                       ${url}/tables    
    ${target}=                  Get WebElement              document.querySelector("#actors > tbody > tr:nth-child(4) > td.actor")
    Log                         ${target.text}
    Log To Console              ${target.text}
    Should Contain              ${target.text}              $ 700.000
    Should Contain              ${target.text}              Pantera Negra
    Sleep                       5
