*** Test Cases ***
Contar Numeros Pares
    ${CONTADOR}    Set Variable    0
    FOR    ${NUMERO}    IN RANGE    0    11    2
        ${CONTADOR}    Evaluate    ${CONTADOR} + 1
    END
    Log To Console    O total de números pares entre 0 e 10 é: ${contador}
