*** Settings ***
Documentation        Cenários de testes de pré-cadastros de clientes

Resource        ../resources/Base.resource

Test Setup       Start Session
Test Teardown    Take Screenshot

*** Test Cases ***
Deve iniciar o cadastro do cliente
    [Tags]    smoke
    
    ${account}     Create Dictionary
    ...            name=Papito Fernando
    ...            email=papito@msn.com
    ...            cpf=05987111048
    
    Delete Account By Email    ${account}[email]

    Submit signup form        ${account}
    Verify welcome message  

Tentativa de pré-cadastro 
    [Template]    Attempt signup
    ${EMPTY}            papito@gmail.com         02534539094                Por favor informe o seu nome completo
    Fernando Papito     ${EMPTY}                 85652517050                Por favor, informe o seu melhor e-mail
    Fernando Papito     papito@gmail.com         ${EMPTY}                   Por favor, informe o seu CPF
    Joao da Silva       joao$silva.com           02875087061                Oops! O email informado é inválido
    Maria da Silva      mariasilva@silva.com        603037690aa               Oops! O CPF informado é inválido

*** Keywords ***
Attempt signup 
    [Arguments]        ${name}    ${email}    ${cpf}    ${output_message}

    ${account}    Create Dictionary
    ...           name=${name}
    ...           email=${email} 
    ...           cpf=${cpf} 

    Submit signup form    ${account} 
    Notice should be      ${output_message}


