*** Settings ***
Documentation     Sanity Testcases for flipkart using Selenium2library.
Library           Selenium2Library

*** Variables ***
${LOGIN URL}      https://www.flipkart.com/
${BROWSER}        Chrome
${username}       8217226577
${password}       xyz1234
${name}           Bluetooth


*** Test Cases ***

Valid Login
    Open Browser To Login Page
    Input Username    
    Input Password
    login_click
    Search Electronics
    Search Mi
    Select min_Price
    Select max_Price
    Select RAM_down
    Select TV
    Select auto
    Select men
    Select women
    Select baby
    Select remote_toys
    Select home_furtn
    Select Sports
    Select Offerzone
    Select Cart
    Select Shopnow
    Select Forward
    Select Viewall
    Select blue_sandal
    Select search
    Select bluetooth
    Select bluetooth1
    [Teardown]    Close Browser


*** Keywords ***

Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Sleep  2s

Input Username
    Sleep  2s
    Input Text    xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input    ${username}

Input Password
    Sleep  2s
    Input Text    xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input    ${password}
    Sleep  2s

login_click
    Sleep  2s
    Click Button    xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[3]/button
    Sleep  2s

Search Electronics
    Click element    xpath=//*[@id="container"]/div/div[2]/div/ul/li[1]/span
    Sleep  2s
Search Mi
    Click element    xpath=//*[@id="container"]/div/div[2]/div/ul/li[1]/ul/li/ul/li[1]/ul/li[2]/a
    Sleep  2s
    
Select min_Price
    Click element    xpath=//*[@id="container"]/div/div[3]/div[2]/div[1]/div[1]/div/div[1]/div/section[2]/div[4]/div[1]/select/option[2]
    Sleep  2s

Select max_Price
    Click element    xpath=//*[@id="container"]/div/div[3]/div[2]/div[1]/div[1]/div/div[1]/div/section[2]/div[4]/div[3]/select/option[3]
    Sleep  2s
    Maximize Browser Window 

Select RAM_down
    Click element    xpath=//*[@id="container"]/div/div[3]/div[2]/div[1]/div[1]/div/div[1]/div/section[4]/div[2]/div/div[2]/div/div/label/div[1]
    Sleep  2s
Select TV
    Click element    xpath=//*[@id="container"]/div/div[2]/div/ul/li[2]/span
    Sleep  2s

Select auto
    Click element    xpath=//*[@id="container"]/div/div[2]/div/ul/li[2]/ul/li/ul/li[2]/ul/li[2]/a
    Sleep  2s

Select men
    Click element    xpath=//*[@id="container"]/div/div[2]/div/ul/li[3]/span
    Sleep  2s
 
Select women
    Click element    xpath=//*[@id="container"]/div/div[2]/div/ul/li[4]/span
    Sleep  2s

Select baby
    Click element    xpath=//*[@id="container"]/div/div[2]/div/ul/li[5]/span
    Sleep  2s

Select remote_toys
    Click element    xpath=//*[@id="container"]/div/div[2]/div/ul/li[5]/ul/li/ul/li[3]/ul/li[2]/a
    Sleep  2s

Select home_furtn
    Click element    xpath=//*[@id="container"]/div/div[2]/div/ul/li[6]/span
    Sleep  2s

Select Sports
    Click element    xpath=//*[@id="container"]/div/div[2]/div/ul/li[7]/span
    Sleep  2s

Select Offerzone
    Click element    xpath=//*[@id="container"]/div/div[2]/div/ul/li[8]/a/span
    Sleep  2s

Select Cart
    Click element    xpath=//*[@id="container"]/div/div[1]/div[1]/div[2]/div[5]/div/div/a/span
    Sleep  2s

Select Shopnow
    Click element    xpath=//*[@id="container"]/div/div[2]/div[2]/div/div/div/div[2]/div/button
    Sleep  2s

Select Forward
    Click element    xpath=//*[@id="container"]/div/div[3]/div[2]/div[1]/div/div[2]
    Sleep  4s

Select Viewall
    Click element    xpath=/html/body/div/div/div[3]/div[2]/div[2]/div[1]/div/div[1]/div/div[2]/a
    Sleep  4s
Select blue_sandal
    Click element    xpath=//*[@id="container"]/div/div[3]/div[3]/div[2]/div/div[2]/div[6]/a/div[1]/div/img
    Sleep  2s

Select search
    Input Text    xpath=//*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/div/input    ${name}
    Sleep  2s

Select bluetooth
    Click Button    xpath=//*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/button
    Sleep  2s

Select bluetooth1
    Click element    xpath=/html/body/div/div/div[3]/div[2]/div/div[2]/div[2]/div/div[1]/div/a[1]/div[1]/div/div/img
    Sleep  2s
