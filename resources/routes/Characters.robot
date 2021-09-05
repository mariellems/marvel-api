*Settings*
Documentation           Ações da rota /characters


*Keywords*
POST New Character
    [Arguments]     ${payload}

    ${response}    POST
    ...            ${BASE_URI}/characters
    ...            json=${payload}
    ...            headers=${HEADERS}
    ...            expected_status=any

    [return]       ${response}  

GET Character By Id
    [Arguments]         ${character_id}

    ${response}     GET
    ...             ${BASE_URI}/characters/${character_id}
    ...             headers=${HEADERS}
    ...             expected_status=any

    [return]        ${response}

DELETE Character By Id
    [Arguments]         ${character_id}

    ${response}     DELETE
    ...             ${BASE_URI}/characters/${character_id}
    ...             headers=${HEADERS}
    ...             expected_status=any

    [return]        ${response}