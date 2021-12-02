*** Settings ***
Library                 SeleniumLibrary

*** Variables ***
${URL}                  https://staging-finance.rabbitinternet.com/en/product/health-insurance/questions

${Browser}              Chrome

${message1}              Process 1 was passed
${message2}              Process 2 was passed
${message3}              Process 3 was passed
${message4}              Process 4 was passed
*** Keywords ***



*** Test Cases ***
TC-1.1 User choose IPD/OPD product successed
    Open Browser                ${URL}                  ${Browser}
    Click Element               xpath=//label[@for='product_category-ipdOpd']
    Log To Console              ${message1}

    Click Element               xpath=//label[contains(text(),'I want to buy a new healthcare (IPD/OPD) policy or')]
    Log To Console              ${message2}

    Click Element               xpath=//label[normalize-space()='Elite (Coverage above 5M THB)']
    Log To Console              ${message3}
    
    
    


    
   

    
    Log To Console              ${message4}