*** Settings ***
Library    Collections
Library    BuiltIn


*** Test Cases ***
Exercício If Inline + For in Range
    [Documentation]    Teste para Exercício If Inline + For in Range
    ${numeros_pares}    Evaluate    len([x for x in range(11) if x % 2 == 0])
    Log To Console    Existem ${numeros_pares} números pares entre 0 e 10
