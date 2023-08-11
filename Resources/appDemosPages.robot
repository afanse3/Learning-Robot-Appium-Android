*** Settings ***
Library           AppiumLibrary
Variables         ../Resources/appDemoLocator.yaml

*** Keywords ***
Start Session Apps
    Set Appium Timeout     10
    Open Application       http://127.0.0.1:4723
    ...                    automationName=UIAutomator2 
    ...                    platformName=Android
    ...                    deviceName=Realme 5 Pro
    ...                    appPackage=io.appium.android.apis
    ...                    appActivity=.ApiDemos
    ...                    autoGrantPermissions=true    
    ...                    noReset=true
    Sleep                  2

Tap Accessibility
    Tap     ${accessibility}

Tap Accessibility Node Provider
    Tap     ${accessibility_node_provider}

Close Apps
    Capture Page Screenshot    ../Step/screenshot.png
    Quit Application