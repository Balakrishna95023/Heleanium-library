*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SELENIUM_HUB}    http://localhost:4444/wd/hub  # Healenium Proxy URL
${BROWSER}         chrome
${URL}             https://www.google.com  # Change this to your test site

*** Test Cases ***
Test Example With Healenium
    [Documentation]    Open website and verify title using Healenium
    Open Browser    ${URL}    ${BROWSER}    remote_url=${SELENIUM_HUB}
    Capture Page Screenshot
    Close Browser
