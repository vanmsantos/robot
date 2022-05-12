
*** Settings ***
Library        app.py


*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=             Welcome    Fernando
    Log To Console         ${result}
    Should Be Equal        ${result}    Ola Fernando, bem vindo ao curso basico de robot framework!
