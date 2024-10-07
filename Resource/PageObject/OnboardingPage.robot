*** Settings ***
Library          AppiumLibrary
Resource        ../Common/CommonKeyword.robot

*** Variables ***
${NEXT_BUTTON}   xpath=//android.widget.Button[@content-desc="Next"]
${START_BUTTON}   xpath=//android.widget.Button[@content-desc="Start"]
${SELECT_OPTION_BUTTON}   xpath=//android.view.View[@content-desc="I Don't Know My Exam Date Yet"]
${SKIP_DIAGNOSTIC_BUTTON}   xpath=//android.widget.Button[@content-desc="Not Now"]
*** Keywords ***
Click Next Button
    [Documentation]   Click the Next button
    Click Element    ${NEXT_BUTTON}
Click Start Button
    [Documentation]   Click the Start button
    Click Element    ${START_BUTTON}
Click Select Option Button
    [Documentation]   Click the Select Option button
    Click Element    ${SELECT_OPTION_BUTTON}

