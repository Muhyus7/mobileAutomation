*** Settings ***
Documentation       Search Flight on signin
Library             AppiumLibrary
Resource            ../pageObjects/Search/searchflight.robot


*** Test Cases ***
User Should Be Able To Search Flight
    [Setup]               Open Flight Application

    Klik Signin For The Application
    Input Username
    Input Password
    Klik button signin to login
    Klik Search for menu
    Input Flight Number 
    Klik Button search for Flight Number
    Verify Page Search Flight Number
    [Teardown]            Close Application
    
    #Element Should Be Visible   //*[@class='android.widget.TextView']//*[contains(text(),"DA 935")]
    #Element locator '//android.widget.TextView[@id=welcome.pages.welcome.title"]' did not match any elements after 30 seconds
    #xpath=//android.widget.Button[@index='7']/android.view.View[@index='0'] while android.view.View[@index='0']


    
    
