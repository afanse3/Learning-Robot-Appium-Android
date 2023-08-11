*** Settings ***
Library          AppiumLibrary
Library           DataDriver    ../Resources/user.csv    sheet_name=sheet1
Resource         ../Resources/appDietPages.robot
Variables        ../Resources/appDietLocator.yaml
Suite Setup      Start Session Apps
Test Template    User Input Welcome Data
Suite Teardown   Close Apps


*** Keywords ***
User Input Welcome Data
    [Arguments]             ${username}    ${weight}    ${height}
    Input Text              ${homePageNameField}            ${username}
    Input Text              ${homePageWeightField}          ${weight} 
    Input Text              ${homePageHeightField}          ${height}
    Tap                     ${homePageGenderMaleButton}

*** Test Cases ***
As a user i want to open Diet Apps
    Sleep                        2
    Page Should Contain Text     Welcome
    User Tap Next Button
