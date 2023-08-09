*** Settings ***
Library    Collections
*** Test Cases ***
Processar Lista
    ${original_list}    Create List    A    1    B    2    C    3
    ${numeric_list}    Create List
    FOR    ${item}    IN    @{original_list}
        ${number} =    Run Keyword And Ignore Error    Convert To Integer    ${item}
        Run Keyword If    "${number}" != "None"    Append To List    ${numeric_list}    ${number}
        Log    Nova lista numérica parcial: ${numeric_list}
    END
    Log To Console  Nova lista numérica final: ${numeric_list}

*** Keywords ***
Convert To Integer
    [Arguments]    ${value}
    ${result} =    Evaluate    int('${value}') if str('${value}').isdigit() else None
    [Return]    ${result}
