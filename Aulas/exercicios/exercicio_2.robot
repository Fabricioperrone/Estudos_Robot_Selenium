*** Settings ***
Library  String

*** Variables ***

&{PESSOA}  nome=Fabricio  sobrenome=Perrone   idade=42
@{FRUTAS}  Abacaxi  Maçã  Laranja  Pera  Uva

*** Test Cases ***
Exibir os dados de uma pessoa no Console
        Log To Console   \n 
        Exibir o dicionario no console

Exibir a lista de frutas adicionadas a lista
        Log To Console  \n 
        Exibir cada uma das frutas
*** Keywords ***

Exibir a lista de frutas adicionadas a lista
        Log To Console  \n
        Exibir cada uma das frutas
Exibir o dicionario no Console
        Log To Console    Dados da Pessoa:
        Log To Console    Nome: ${PESSOA.nome}
        Log To Console    Nome: ${PESSOA.sobrenome}
        Log To Console    Nome: ${PESSOA.idade}


Exibir cada uma das frutas
        Log To Console  ${FRUTAS}[0]
        Log To Console  ${FRUTAS}[1]
        Log To Console  ${FRUTAS}[2]
        Log To Console  ${FRUTAS}[3]
        Log To Console  ${FRUTAS}[4]
        