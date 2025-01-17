# Created by sh.shilpashree at 17-01-2025
*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    CSVLibrary
Resource    ../Resources/Juspay Variables.resource
*** Keywords ***

*** Test Cases ***

Automate Payment Flow Using Amazon Pay
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Go To    ${URL}
#    Wait Until Page Contains    Sign In
    Sleep   5
#    Wait Until Page Contains Element    xpath=//a[@class='NavigationItem-button Button-white']   10s
#    Click Element    xpath=//a[@class='NavigationItem-button Button-white']

    Wait Until Page Contains Element    xpath=//span[@id='nav-link-accountList-nav-line-1']    10s
    Click Element    xpath=//span[@id='nav-link-accountList-nav-line-1']

    Wait Until Page Contains Element    xpath=//input[@id='ap_email']    10s
    Input Text       xpath=//input[@id='ap_email']        shilpa.sya2@gmail.com

    Wait Until Page Contains Element    xpath=//input[@id='continue']    10s
    Click Element       xpath=//input[@id='continue']

    Wait Until Page Contains Element    xpath=//input[@id='ap_password']    10s
    Input Text       xpath=//input[@id='ap_password']        Abc@123

    Wait Until Page Contains Element    xpath=//input[@id='signInSubmit']    10s
    Click Element       xpath=//input[@id='signInSubmit']

#    some captcha issue is coming after submit


#    Wait Until Page Contains Element    xpath=//span[@class='nav-cart-icon nav-sprite']   10s
#    Click Element       xpath=//span[@class='nav-cart-icon nav-sprite']
#
#    Wait Until Page Contains Element    xpath=//input[@name='proceedToRetailCheckout']   10s
#    Click Element       xpath=//span[@class=//input[@name='proceedToRetailCheckout']
