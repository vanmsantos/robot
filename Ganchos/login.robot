*** Settings ***
Resource        base.robot

Test Setup        New Session
Test Teardown     Close Session

*** Test Cases ***
open form login sussec
    Go To                    ${url}/login
    login with               stark    jarvis!
    
    should see logged user    Tony Stark


Password Invalid
    [tags]                   login_erro
    Go To                    ${url}/login
    Input Text               css:input#userId       stark
    Input Text               css:input#passId       12345t  
    Click Element            class:btn-login
    
    Page Should Contain      Senha é invalida!

Password Invalid validacao mais elaborada
    Go To                         ${url}/login
    Input Text                    css:input#userId       stark
    Input Text                    css:input#passId       12345t  
    Click Element                 class:btn-login
    
    should contain login alert    Senha é invalida!

usuario nao cadastrado
    [tags]                   login_user404
    Go To                    ${url}/login
    Input Text               css:input#userId       vania
    Input Text               css:input#passId       12345t  
    Click Element            class:btn-login
    
    ${messagem}=             Get WebElement        id:flash
    Should Contain           ${messagem.text}      O usuário informado não está cadastrado!
   
*** Keywords ***
login with
    [Arguments]               ${username}          ${password}    
    
    Input Text               css:input#userId      ${username}
    Input Text               css:input#passId      ${password} 
    Click Element            class:btn-login

should contain login alert
    [Arguments]            ${expect_messagem}
    
    ${messagem}=             Get WebElement        id:flash
    Should Contain           ${messagem.text}      expect_messagem

should see logged user
    [Arguments]            ${full_name}

    Page Should Contain    Olá, ${full_name}. Você acessou a área logada!