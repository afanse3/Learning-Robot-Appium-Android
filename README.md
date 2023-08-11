# Learning-Robot-Appium-Android
This is my first learning about Appium using Robot Framework while testing the Android app.
Pre-requisite:
1. Install nodejs, and then install appium (in my case im using appium 2.x) and its driver UiAutomator2 (for Android) or XCUITest (for IOS)
2. Install python, and then install robot framework, appium library & datadriven library
3. You need to know your phone device name and platform name (the example is inside Resources/appDemosPages.robot or Resources/appDietPages.robot)   
4. Install Vysor, if you want to see if the test is actually running in your phone.

How to run:
1. Install the apps inside /apk folder to your Android phone.
2. Open the Resources/appDemosPages.robot or Resources/appDietPages.robot and change the platformName & deviceName to your phone settings
3. Just run the scipt appDemosStep.robot or appDietStep.robot inside folder /Step
