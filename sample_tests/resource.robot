*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library

*** Variables ***
${SERVER}         google.com
${BROWSER}        Firefox
${DELAY}          0
${LOGIN URL}      https://${SERVER}/

*** Keywords ***
Open Browser To Google 
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Google Should Be Open

Google Should Be Open
    Title Should Be    Google
