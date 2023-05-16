*** Settings ***
Documentation    Verify that customer able to login fail and success correctly on TOPs website
Test Setup   Open Browser    browser=Chrome
Test Teardown    Close Browser
Resource    ${CURDIR}/../../../../../Resources/ui/browser/web/import.resource


*** Test Cases ***
TC0001 User unable to login to facebook when username is incorrect
    common_keywords.Open Facebook browser
    Maximize Browser Window
    login_page.Check go to login page
    login.Input And Submit Login Form    ${email}    ${password}
    Switch Window    MAIN
    login.Verify login fail with invalid username