*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/Custom_Library.py



*** Variables ***
${url}      https://the-internet.herokuapp.com/login
${browser}      chrome
${xpathusername}    //label[text()="Username"]/following-sibling::input
${xpathpassword}    //label[text()="Password"]/following-sibling::input
${xpathsubmit}      //button[@class="radius" and @type="submit"]
${xpathtext}        //h4[contains  (text(),"Welcome")]




*** Keywords ***
Access the login page
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

Enter the credentails
    [Arguments]     ${username}     ${password}
    Wait Until Element Is Visible    ${xpathusername}
    Input Text    ${xpathusername}    ${username}
    Input Password    ${xpathpassword}    ${password}
    Click Button    ${xpathsubmit}


 login validation
    Wait Until Element Is Visible    ${xpathtext}
    ${page_text}=   Get Text  ${xpathtext}
    IF    'Welcome' in $page_text
        Log    SUCCESS: Login successful
    ELSE
        Log    ERROR: Login unsuccessful
    END


