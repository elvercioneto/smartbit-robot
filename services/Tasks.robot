*** Settings ***
Documentation        Arquivo para testar o consumo do API com tasks 

Resource        ./Service.resource

*** Tasks ***
Testando a API 
    Set user token
    Get account by name   Dominic Toreto