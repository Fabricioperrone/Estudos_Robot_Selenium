*** Settings ***
Library  String

*** Variables ***
${NOME}  Fabrício Perrone


*** Test Cases ***

Verificar o tamanho do NOME
   contar o tamanho do NOME
   exibir o tamanho do NOME

*** Keywords *** 

contar o tamanho do NOME
    ${TAMANHO_NOME}  Get Length  ${NOME}
    Set Suite Variable  ${TAMANHO_NOME}

exibir o tamanho do NOME
    Log To Console         ${TAMANHO_NOME}
 