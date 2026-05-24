*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/Navigation.robot
Library    ../resources/Custom_Library.py


*** Variables ***

*** Keywords ***


*** Test Cases ***
Login_page_validation
#     TRY
#            Access the login page
#        EXCEPT
#            Log    login succesfull
#        END

    @{data}=   csv_as_list      C:/Users/Mahadeva Prasad C M/PycharmProjects/RobotFramework_Automation/data/Credentials.csv
    FOR    ${element}    IN    @{data}
        Access the login page
        Enter the credentails   ${element}[0]      ${element}[1]

    END

    login validation