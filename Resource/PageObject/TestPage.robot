*** Settings ***
Library          AppiumLibrary
Resource        ../Common/CommonKeyword.robot

*** Variables ***
${SKIP_DIAGNOSTIC_BUTTON}   xpath=//android.widget.Button[@content-desc="Not Now"]
${MECHANICAL_TEST_BUTTON}   xpath=//android.widget.ImageView[contains(@content-desc, "Mechanical Comprehension")]
${CONTINUE_LEARNING_BUTTON}   xpath=//android.widget.Button[@content-desc="Continue Learning"]
${CORRECT_ANSWER_LOCATOR}    xpath=//android.view.View[contains(@content-desc, 'CorrectAnswer')]
${CONTINUE_BUTTON_LOCATOR}   xpath=//android.view.View[@content-desc='Continue']

*** Keywords ***
Click Skip Diagnostic Button
    [Documentation]   Click the Skip Diagnostic button
    Click Element    ${SKIP_DIAGNOSTIC_BUTTON}
Start mechanical test
    [Documentation]   Start the mechanical test
    Click Element    ${MECHANICAL_TEST_BUTTON}
    Sleep  3
    Click Element    ${CONTINUE_LEARNING_BUTTON}
Select Only Correct Answer
    [Documentation]   Select the correct answer
    ${elements}=    Get Element Location    ${CORRECT_ANSWER_LOCATOR}
    WHILE    $elements != None
        Click Element    ${CORRECT_ANSWER_LOCATOR}
        Click Element    ${CONTINUE_BUTTON_LOCATOR}
        ${elements}=    Get Element Location    ${CORRECT_ANSWER_LOCATOR}
    END