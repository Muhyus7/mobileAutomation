*** Settings ***
Documentation       Search BookFlight on signin
Variables           book_flight.yaml

*** Variables ***
${REMOTE_URL}           http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     11
${DEVICE_NAME}          e5c7cdff
${ACTIVITY_NAME}        com.example.myapplication.MainActivity
${PACKAGE_NAME}         com.example.myapplication
${username_login}       support@ngendigital.com
${password_login}       abc123
${text_booked}          Your flight is booked. Reservation number is CADX2214


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
Click Signin For The Application
    Tap                         ${Buttonsignin}
Input Username
    Input Text                  ${Input_username}           ${username_login} 
Input Password
    Input Text                  ${Input_password}           ${password_login}
Click button signin to login
    Tap                         ${Buttonsignin2}
Click Book for menu
    Wait Until Page Contains Element    ${Searchmenubook}
    Tap                                 ${Searchmenubook}
Click Round Trip
    Wait Until Page Contains Element    ${round_trip} 
    Tap                                 ${round_trip} 
Choose Data From City 
    Tap                                 ${tap_fromcity}
    Wait Until Page Contains Element    ${tap_fromcitychicago}
    Click Element                       ${tap_fromcitychicago}
Choose Data To City 
    Tap                                 ${tap_tocity}
    Wait Until Page Contains Element    ${tap_tocityparis}
    Tap                                 ${tap_tocityparis}
Choose Data Class
    Tap                                 ${tap_class}
    Wait Until Page Contains Element    ${tap_classbusiness}
    Tap                                 ${tap_classbusiness}
Picklist Startdate Flight
    Tap                                 ${startdate}
    Wait Until Page Contains Element    ${klikstartdate}
    Click Element                       ${klikstartdate}
    Tap                                 ${okstartdate}
Picklist Enddate Flight
    Tap                                 ${enddate}
    Wait Until Page Contains Element    ${klikenddate}
    Click Element                       ${klikenddate}
    Tap                                 ${okenddate}  
Choose radio button
    Click Element                       ${flighthotel}
Choose checkbox
    Click Element                       ${checkboxday}
Click Book for Bookflight
    Tap                                 ${bookflight}
Choose Price to confirm booking
    Wait Until Page Contains Element    ${price}
    Tap                                 ${price}
Click Confirm
    Tap                                 ${buttonprice}
Verify Page Booked
    Element Should Contain Text         ${booked}               ${text_booked}      	
    
    
   
                   
    
    
    
    
    
    


          
    
    
    
    
    
    
