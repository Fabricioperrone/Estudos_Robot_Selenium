*** Settings ***
Library    Collections
Library    BuiltIn

*** Test Cases ***
Exercício For Simples + Lista
    [Documentation]    Teste para Exercício For Simples + Lista
    ${frutas}    Create List    Banana    Maçã    Laranja    Morango    Uva
    Exibir Frutas    ${frutas}

*** Keywords ***
Exibir Frutas
    [Arguments]    ${frutas}
    FOR    ${fruta}    IN    @{frutas}
        Log    ${fruta}
    END
    Log To Console    Existem ${frutas} lista de frutas

