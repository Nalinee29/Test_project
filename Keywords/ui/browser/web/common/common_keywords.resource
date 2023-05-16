*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Open Facebook browser
    [Documentation]    Open facebook website on browser
    Go To    https://www.facebook.com/

Input Text To Element When Ready
    [Arguments]    ${location}    ${text}  
    Wait until element is visible    ${location}    ${GLOBALTIMEOUT}
    Input Text    ${location}    ${text} 

Click Element When Ready
    [Arguments]    ${location}
    Wait until element is visible    ${location}    ${GLOBALTIMEOUT}
    Mouse Over    ${location}
    Click Element    ${location}





