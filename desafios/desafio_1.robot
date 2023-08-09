*** Settings ***
Library  String
Library    OperatingSystem
Resource    ../../Aulas/exercicios/exercicio_1.robot
Library    BuiltIn

*** Variables ***
&{PESSOA}  nome=João    idade=30    rua=R. Principal    numero=123    cep=12345-678    bairro=Centro    cidade=São Paulo    estado=SP


*** Test Cases ***
Exibir os dados de uma pessoa no Console
        Log To Console  \n 
        Exibir o dicionario no console
       

      
*** Keywords ***
Exibir o dicionario no Console
        Log To Console    Dados da Pessoa:
        Log To Console    Nome: ${PESSOA.nome}
        Log To Console    Idade: ${PESSOA.idade}
        Log To Console    Rua: ${PESSOA.rua}
        Log To Console    Numero: ${PESSOA.numero}
        Log To Console    CEP: ${PESSOA.cep}
        Log To Console    Bairro: ${PESSOA.bairro}
        Log To Console    Cidade: ${PESSOA.cidade}
        Log To Console    Estado: ${PESSOA.estado}


   