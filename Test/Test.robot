*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${url}              https://www.google.com/
${browser}          chrome



*** Keywords ***


*** Test Cases ***
Test open browser
    Open Browser            ${url}          ${browser}


ใส่คำค้นหา
    Input Text              name=q          qa software
รอจนclick
    Wait Until Page Contains    qa software
    
กดปุ่ม ค้นหา
    Click button         //input[@name="btnK" ]           ENTER