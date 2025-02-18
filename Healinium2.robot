*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SELENIUM_HUB}    http://localhost:4444/wd/hub  # Healenium Proxy URL
${BROWSER}         chrome
${URL}             http://localhost:8080/test_page.html  # Use a local test page

*** Test Cases ***
Test Healenium Healing
    [Documentation]    Open a webpage and click a button. If XPath changes, Healenium should heal it.
    
    Open Browser    ${URL}    ${BROWSER}    remote_url=${SELENIUM_HUB}    options=--ignore-certificate-errors}
    Maximize Browser Window

    # Click the button using an old XPath (this should change later)
    Click Element    //button[@id='old-button-id']

    # Verify the action happened
    Page Should Contain    Button Clicked Successfully

    Capture Page Screenshot
    Close Browser
