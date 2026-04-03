*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/Navigation.robot


*** Variables ***

*** Keywords ***


*** Test Cases ***
Login_page_validation
    Access the login page
    Enter the credentails    tomsmith    SuperSecretPassword!
    login validation