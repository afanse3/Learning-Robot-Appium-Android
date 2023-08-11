*** Settings ***
Library           AppiumLibrary
Variables         ../Resources/appDietLocator.yaml

*** Keywords ***
Start Session Apps
    Set Appium Timeout     10
    Open Application       http://127.0.0.1:4723
    ...                    automationName=UIAutomator2 
    ...                    platformName=Android
    ...                    deviceName=Realme 5 Pro
    ...                    appPackage=com.fghilmany.dietmealapp
    ...                    appActivity=.ui.main.MainActivity
    ...                    autoGrantPermissions=true    
    ...                    noReset=true
    Sleep                  3

User Tap Next Button
    Tap                     ${homePageNextButton}

Close Session Apps
    Capture Page Screenshot
    Close Application

Close Apps
    Capture Page Screenshot    ../results/screenshotDiet.png
    Quit Application