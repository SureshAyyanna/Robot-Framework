*** Settings ***
Library    SeleniumLibrary
Suite Setup     Open Browser    ${url}  ${Browser}
Suite Teardown  Close All Browsers

*** Variables ***
${url}              https://www.google.com/
${Browser}          chrome

*** Test Cases ***
Google search
    Delete All Cookies
    Maximize Browser Window
    Wait Until Element Is Visible    css=input[title='Search']
    Input Text      xpath=//input[@title='Search']    robot framework
    Sleep    5
    Press Keys  None    ESC
    Click Button    xpath=//div[@class='FPdoLc lJ9FBc']//input[@name='btnK']