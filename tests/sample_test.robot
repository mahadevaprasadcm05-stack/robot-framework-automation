*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Google
    Open Browser    https://www.google.com    chrome
    Sleep    3s
    Close Browser