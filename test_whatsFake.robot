*** Settings ***
Library           AppiumLibrary

*** Variables ***
${PACKAGE}    com.aymenlotfi70.whatsfake
${ACTIVITY}    com.aymenlotfi70.whatsfake.activities.MainActivity
${ANDROID_APK}    ${CURDIR}/app/fake_whatsapp.apk
${hint}    com.aymenlotfi70.whatsfake:id/no_chats_hint
${hint_expect}    To simulate a message, tap %s at the bottom of your screen.

*** Keywords ***
Abrir WhatsFake
    Open Application  http://localhost:4723    automationName=UIAutomator2    platformName=Android    app=${ANDROID_APK}    appPackage=${PACKAGE}    appActivity=${ACTIVITY}

Validar mensagem
    Element Text Should Be    ${hint}    ${hint_expect}

Sair do aplicativo
    Close Application
*** Test Cases ***
Cenário - Validar mensagem
    Abrir WhatsFake
    Sleep    2s
    Validar mensagem
    Sair do aplicativo

tc2
    Log    hello
