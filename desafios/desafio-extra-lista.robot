

*** Test Cases ***
Cenario: Exemplo de TRY, EXCEPT e FINALLY
   Somar lista-original A 1 B 2 C 3 com lista_atualizada 1 2 3
          

*** Keywords ***

Somar ${lista-original} com ${lista_atualizada}
  Log to console  ${EMPTY}
  TRY
    ${SOMA}  Evaluate  ${lista-original} + ${lista_atualizada}
    ${R}  Set Variable  O resultado da soma é: ${SOMA}
  EXCEPT
    ${R}  Set Variable  Erro ao somar os termos ${lista-original} e ${lista_atualizada}. Verifique se são números
  FINALLY
    Log to console  ${R}
  END