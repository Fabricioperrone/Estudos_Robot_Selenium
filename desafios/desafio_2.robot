*** Test Cases ***
Calcular Ano de Nascimento
    ${IDADE} =    Set Variable    30
    ${ANO_NASCIMENTO} =    Calcular Ano Nascimento    ${IDADE}
    ${MENSAGEM_SECULO} =    Verificar Seculo    ${ANO_NASCIMENTO}
    Log To Console    Sua idade é ${IDADE} anos.
    Log To Console    Seu ano de nascimento é ${ANO_NASCIMENTO}.
    Log To Console    ${MENSAGEM_SECULO}

*** Keywords ***
Calcular Ano Nascimento
    [Arguments]    ${IDADE}
    ${ANO_ATUAL} =    Evaluate    2023
    ${ANO_NASCIMENTO} =    Evaluate    ${ANO_ATUAL} - ${IDADE}
    [Return]    ${ANO_NASCIMENTO}

Verificar Seculo
    [Arguments]    ${ano}
    ${MENSAGEM} =    Run Keyword If    ${ANO} < 2000    Set Variable    Você nasceu no século passado.    ELSE    Set Variable    Você nasceu neste século.
    [Return]    ${MENSAGEM}
