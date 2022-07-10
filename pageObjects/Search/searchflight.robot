*** Settings ***
Documentation       Search Flight on signin
Variables           search.yaml

*** Variables ***
${REMOTE_URL}           http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     11
${DEVICE_NAME}          e5c7cdff
${ACTIVITY_NAME}        com.example.myapplication.MainActivity
${PACKAGE_NAME}         com.example.myapplication
${username_login}       support@ngendigital.com
${password_login}       abc123
${textsearch}           DA935
${textsearch2}          DA 935


*** Keywords ***
Open Flight Application
    Open Application        ${REMOTE_URL} 
    ...                     platformName=${PLATFORM_NAME}
    ...                     platformVersion=${PLATFORM_VERSION}
    ...                     deviceName=${DEVICE_NAME}
    ...                     appActivity=${ACTIVITY_NAME}
    ...                     appPackage=${PACKAGE_NAME}
    ...                     automationName=UiAutomator2
    ...                     newCommandTimeout=5000
Klik Signin For The Application
    Tap                                 ${Buttonsignin}
Input Username
    Input Text                          ${Input_username}           ${username_login} 
Input Password
    Input Text                          ${Input_password}           ${password_login}
Klik button signin to login
    Tap                                 ${Buttonsignin2}
Klik Search for menu
    Wait Until Page Contains Element    ${Searchmenu}
    Tap                                 ${Searchmenu}
Input Flight Number 
    Wait Until Page Contains Element    ${Input_flightnumber}
    Input Text                          ${Input_flightnumber}       ${textsearch} 
Klik Button search for Flight Number
    Wait Until Page Contains Element    ${Button_search2}
    Tap                                 ${Button_search2}
Verify Page Search Flight Number
    sleep                               2s
    Page Should Contain Text            ${textsearch2}
    
          
    
    
    
    
    
    
