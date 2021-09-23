*** Settings ***
Library    AppiumLibrary
#Library    SeleniumLibrary
#Library    SeleniumLibrary
#Variables    ../resources/env.resource
#Test Teardown

*** Variables ***
${url}    http://localhost:4723/wd/hub
${platf}    Android
${device}    emulator-5554
${package}    com.mercadolibre
${activity_name}    com.mercadolibre.activities.SplashActivity
#click
${omitir}    com.mercadolibre:id/home_onboarding_action_skip_text_view
${buscar}    xpath=//*[@resource-id="com.mercadolibre:id/ui_components_action_bar_title_toolbar"]
${bscMueble}    xpath=//*[contains(@text,'Buscar en Mercado Libre')]

#texto a buscar
#&{zapa}    zapatillas


*** Test Cases ***
OpenApp
    Open Application    ${url}    platformName=${platf}    deviceName=${device}    appPackage=${package}    appActivity=${activity_name}
    Wait Until Page Contains Element    ${omitir}    timeout=20s
    Click Element    ${omitir}
    Wait Until Page Contains Element    ${buscar}
    Click Element    ${buscar}
    Wait Until Page Contains Element    ${bscMueble}
    Input Text    ${bscMueble}    mueble
    Press Keycode    66
    Sleep    20s
    Close All Applications





