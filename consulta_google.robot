*** Settings ***
Documentation  Testes de consulta no buscador Google
...  abre o navegador Chrome
...  e realiza a consulta

Library  SeleniumLibrary
Library  OperatingSystem

*** Variables ***
${browser}      chrome
${url}          https://www.google.com.br

*** Test Cases ***
Consulta Google
    [Tags]    rapido
    Acessar o Chrome na pagina <https://www.google.com.br>
    Digitar na pesquisa "Ovos de Páscoa"
    Validar se aparece no titulo da guia o resultado esperado
    Fechar o browser

*** Keywords ***
Acessar o ${browser} na pagina <${url}>
    open browser    ${url}  ${browser}

Digitar na pesquisa "${palavra_chave}"
    Set Test Variable             ${palavra_chave}
    input text      name = q        ${palavra_chave}
    press keys      name = q        ENTER

Validar se aparece no titulo da guia o resultado esperado
    ${titulo} = get title
    Should contain  ${titulo}       ${palavra_chave}

Fechar o browser
    close browser