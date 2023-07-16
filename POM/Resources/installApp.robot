*** Settings ***
Library  AppiumLibrary

*** Variables ***
#CURDIR = Current Directory
#EXECDIR = Root Directory
${AVD}     Nexus_6_API_25
${ROUTE}    http://localhost:4723
${AUTO_NAME}    UIAutomator2
${PLATFORM}    Android
${ANDROID_APK}    ${EXECDIR}/app/fake_whatsapp.apk
${PACKAGE}    com.aymenlotfi70.whatsfake
${ACTIVITY}    com.aymenlotfi70.whatsfake.activities.MainActivity


*** Keywords ***
Iniciar device e abrir o aplicativo
    Open Application  ${ROUTE}    automationName=${AUTO_NAME}    platformName=${PLATFORM}    avd=${AVD}    app=${ANDROID_APK}    appPackage=${PACKAGE}    appActivity=${ACTIVITY}