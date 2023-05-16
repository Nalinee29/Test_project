*** Keywords ***
Input And Submit Login Form
    [Arguments]    ${email}  ${password}
    login_page.input email    ${email}
    login_page.input password    ${password}
    login_page.click login button

Verify login fail with invalid username
    login_page.close popup
    login_page.verify invalid email error msg
     

