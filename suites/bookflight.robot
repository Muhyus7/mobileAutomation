*** Settings ***
Documentation       Search BookFlight on signin
Library             AppiumLibrary
Resource            ../pageObjects/Bookflight/bookflight.robot


*** Test Cases ***
User Should Be Able To BookFlight
    [Setup]               Open Flight Application

    Click Signin For The Application
    Input Username
    Input Password
    Click button signin to login
    Click Book for menu
    Click Round Trip
    Choose Data From City 
    Choose Data To City 
    Choose Data Class
    Picklist Startdate Flight
    Picklist Enddate Flight
    Choose radio button
    Choose checkbox
    Click Book for Bookflight
    Choose Price to confirm booking
    Click Confirm
    Verify Page Booked
    [Teardown]            Close Application