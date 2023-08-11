*** Settings ***
Library          AppiumLibrary
Resource         ../Resources/appDemosPages.robot
Variables        ../Resources/appDemoLocator.yaml
Suite Setup      Start Session Apps
Suite Teardown   Close Apps

*** Test Cases ***
As a user i want to open Demos apps
    Page Should Contain Text             Accessibility
    Tap Accessibility
    Sleep                                2
    Page Should Contain Text             Accessibility Node Provider
As a user i want to open Accessibility Node Provider
    Tap Accessibility Node Provider
    Page Should Contain Text             Enable TalkBack and
