*** Settings ***
Documentation     Ações e elementos da tela de Login 

Library    AppiumLibrary

*** Keywords ***
Signin with Document    
    [Arguments]    ${cpf}

    Input Text    xpath=//android.widget.EditText[@resource-id="ipAddress"]    192.168.100.30
    Input Text    xpath=//android.widget.EditText[@resource-id="cpf"]          ${cpf}  

    Click Element    xpath=//android.view.ViewGroup[@resource-id="btnLogin"]