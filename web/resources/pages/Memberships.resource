*** Settings ***
Documentation        Ações e elementos da página de Matrículas

Library        Browser

*** Keywords ***

Create new membership
    [Arguments]                ${data}

    Go to memberships form
    Select account           ${data}[account][name]        ${data}[account][cpf]
    Select Plan              ${data}[plan][name]
    Fill payment card        ${data}[credit_card]
    
    Click                  css=button[type=submit] >> text=Cadastrar 

Go to memberships form
    Click                        css=a[href="/memberships/new"]
    Wait For Elements State          css=h1 >> text=Nova Matrícula        visible        5 

Select account    
    [Arguments]        ${name}    ${cpf}

     Fill Text        css=input[aria-label=select_account]        ${name}
    
    # Sleep   2

    # recurso utilizado para pegar o html da página
    # utilizado para pegar componentes volateis(que somem da pagina)
    # ${html}        Get Page Source
    # Log    ${html}
    # Sleep    3
    
    Click    css=[data-testid="${cpf}"]

Select Plan 
    [Arguments]        ${name}

     Fill Text        css=input[aria-label=select_plan]       ${name}
    # Click            css=div[id*=option] >> text=Plano Black
    # Div cuja classe termina com option
    Click            css=div[class$=option] >> text=${name}

Fill payment card
    [Arguments]    ${card}
    
    Fill Text    css=input[name=card_number]            ${card}[number]
    Fill Text    css=input[name=card_holder]            ${card}[holder]
    Fill Text    css=input[name=card_month]             ${card}[month] 
    Fill Text    css=input[name=card_year]              ${card}[year]
    Fill Text    css=input[name=card_cvv]               ${card}[cvv]


Search by name
    [Arguments]    ${name}

    Fill Text    css=input[placeholder^=Busque]    ${name}

    Wait For Elements State    css=strong >> text=Total: 1
    ...    visible        5

Should filter by name
    [Arguments]    ${name}

     Wait For Elements State    css=table tbody tr >> text=${name}
    ...    visible        5

Request removal by name    
    [Arguments]    ${name}

   Click    xpath=//td[text()="${name}"]/..//button

Membership should be visible
    [Arguments]    ${name}

    Wait For Elements State    css=table tbody tr >> text=${name}
   #detached - nao esteja visivel
    ...    detached    5 