*** Settings ***
Resource        base.robot

Test Setup        New Session
Test Teardown     Close Session

*** Test Cases ***
open form login sussec
    Go To            ${url}/login
    Input Text       css:input[#userId]       stark
    Input Text       css:input[#passId]       jarvis!    
