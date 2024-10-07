*** Settings ***
Library          AppiumLibrary
Resource        ../Resource/Common/CommonKeyword.robot
Resource        ../Resource/PageObject/LoginPage.robot
Resource        ../Resource/PageObject/OnboardingPage.robot
Resource        ../Resource/PageObject/TestPage.robot

*** Test Cases ***
RunTestCase
    [Documentation]   Test the onboarding flow
    Open ASVAB Application
    Sleep  5
    Click Next Button
    Sleep  2
    Click Next Button
    Sleep  2
    Click Start Button
    Sleep  2
    Click Skip Button
    Sleep  2
    Click Select Option Button
    Sleep  2
    Click Skip Diagnostic Button
    Sleep  5
    Start mechanical test
    Sleep  3
    Select Only Correct Answer
    Sleep  3
    Close ASVAB Application
