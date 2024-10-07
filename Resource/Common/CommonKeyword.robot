*** Settings ***
Library          AppiumLibrary
Resource        ./CommonKeyword.robot

*** Variables ***
${APPIUM_SERVER}    http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    14
${DEVICE_NAME}    emulator-5554
${APP_PACKAGE}    com.sima.asvab
${APP_ACTIVITY}   com.example.abc_app.MainActivity
${AUTOMATION_NAME}    UiAutomator2

*** Keywords *** 
Open ASVAB Application
    [Documentation]   Open the application
    AppiumLibrary.Open Application    ${APPIUM_SERVER}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
Close ASVAB Application
    [Documentation]   Close the application
    AppiumLibrary.Close Application