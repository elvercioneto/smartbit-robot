*** Settings ***
Documentation    Suíte de testes de login

Resource        ../resources/Base.resource

Test Setup        Start Session
Test Teardown     Finish session    



*** Test Cases ***
Deve logar com ip e cpf

    ${data}    Get Json fixture    login

    Insert Membership       ${data}

    Signin with Document    ${data}[account][cpf]
    User is logged in 

Não deve logar com cpf não cadastrado
  

    Signin with Document    45821407001
    Popup have text         Acesso não autorizado! Entre em contato com a central de atendimento

Não deve logar com cpf com dígito inválido
    [Tags]    temp

    Signin with Document    000000014144
    Popup have text         CPF inválido, tente novamente