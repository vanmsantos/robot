*** Settings ***
Resource        base.robot

Test Setup        New Session
Test Teardown     Close Session

*** Test Cases ***
open form login sussec
    Go To                    ${url}/login
    Input Text               css:input#userId       stark
    Input Text               css:input#passId       jarvis!    
    Click Element            class:btn-login
    
    Page Should Contain      Olá, Tony Stark. Você acessou a área logada!

Password Invalid
    [tags]                   login_erro
    Go To                    ${url}/login
    Input Text               css:input#userId       stark
    Input Text               css:input#passId       12345t  
    Click Element            class:btn-login
    
    Page Should Contain      Senha é invalida!

Password Invalid validacao mais elaborada
    Go To                    ${url}/login
    Input Text               css:input#userId       stark
    Input Text               css:input#passId       12345t  
    Click Element            class:btn-login
    
    ${messagem}=             Get WebElement        id:flash
    Should Contain           ${messagem.text}      Senha é invalida!

usuario nao cadastrado
    [tags]                   login_user404
    Go To                    ${url}/login
    Input Text               css:input#userId       vania
    Input Text               css:input#passId       12345t  
    Click Element            class:btn-login
    
    ${messagem}=             Get WebElement        id:flash
    Should Contain           ${messagem.text}      O usuário informado não está cadastrado!
   
