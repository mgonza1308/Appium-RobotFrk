*** Settings ***
Library    AppiumLibrary

*** Variables ***
${url}    http://localhost:4723/wd/hub
${platf}    Android
${device}    emulator-5554
${package}    com.falabella.falabellaApp
${activity_name}    com.falabella.falabellaApp.AppSwitcherActivity
#click
${notNow}    com.falabella.falabellaApp:id/tv_not_now

*** Test Cases ***
OpenApp
    Open Application    ${url}    platformName=${platf}    deviceName=${device}    appPackage=${package}    appActivity=${activity_name}
    Wait Until Page Contains Element    ${notNow} 
    Click Element    ${notNow}


