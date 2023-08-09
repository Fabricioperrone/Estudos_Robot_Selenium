*** Settings ***

*** Test Cases ***
Exibir Lista de Frutas
    ${FRUTAS}    Create List    Maçã    Banana    Laranja    Morango    Uva
    Exibir Frutas    ${FRUTAS}

*** Keywords ***
Exibir Frutas
    [Arguments]    ${FRUTAS}
    FOR    ${fruta}    IN    @{FRUTAS}
        Log To Console    ${FRUTA}
    END
