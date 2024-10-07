*** Settings ***
Library          AppiumLibrary
Resource         ../Common/CommonKeyword.robot

*** Variables ***
${SIGN_IN_WITH_GOOGLE_BUTTON}   xpath=//android.widget.Button[@content-desc="Sign in with Google"]
${EMAIL_EDIT_TEXT}   xpath=//android.widget.EditText
${SKIP_BUTTON}   xpath=//android.widget.Button[@content-desc="Skip"]

*** Keywords ***
Click Skip Button
    [Documentation]   Click the Skip button
    Click Element    ${SKIP_BUTTON}

