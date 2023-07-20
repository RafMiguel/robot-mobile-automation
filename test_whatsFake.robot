*** Settings ***
Library           AppiumLibrary
Resource   ./POM/Resources/installApp.robot

*** Variables ***

${hint_el}    com.aymenlotfi70.whatsfake:id/no_chats_hint
${hint_expect}    To simulate a message, tap %s at the bottom of your screen.

*** Keywords ***

Validar mensagem
    Element Text Should Be    ${hint_el}    ${hint_expect}

Sair do aplicativo
    Close Application
*** Test Cases ***
Cenário - Validar mensagem
    Iniciar device e abrir o aplicativo
    Sleep    2s
    Validar mensagem
    Sair do aplicativo

tc2
    Log    hello
