*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${txt_email}    xpath=//input[@id="email"]
${txt_password}    xpath=//input[@id="pass"]
${btn_login}    xpath=//button[@name="login"]
${msg_email_invalid}    xpath=//div[@class="_9ay7"][text()="The email address or mobile number you entered isn't connected to an account. "]
${popup}    xpath=//div[@class="_4t2a"]
${btn_close_popup}    xpath=//a[@class="_39g9"][text()="Not you?"]
${GLOBALTIMEOUT}    120




*** Keywords ***
# ------------- Action -------------------
input email
    [Documentation]    Input email to login
    [Arguments]    ${email}
    Input Text To Element When Ready    ${txt_email}    ${email}

input password
    [Documentation]    Input password to login
    [Arguments]    ${password}
    Input Text To Element When Ready    ${txt_password}    ${password}

click login button
    [Documentation]    Login to website with email
    Click Element When Ready   ${btn_login}

close popup 
    Wait Until Element Is Visible    ${popup}    timeout=15
    Wait Until Element Is Visible    ${btn_close_popup}
    Click Element    ${btn_close_popup}
    

# ------------- Verification -------------

Check go to login page
    [Documentation]    Check login page has show
    Wait until element is visible    ${btn_login}   ${GLOBALTIMEOUT}

verify invalid email error msg
    [Documentation]    Check error message when input invalid email
    Wait Until Element Is Visible    ${msg_email_invalid}