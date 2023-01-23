*** Comments ***
My first testcase

*** Settings ***
Library    Browser
Library    OperatingSystem

*** Variables ***
${sPath}   D:\\Playground\\Source\\
${tPath}   D:\\Playground\\Target\\
${File}    readme.md
${copy_this}    ${sPath}${File}

*** Test Cases ***
This is my testcase
    log  hello world

Example Test
    New Page    https://playwright.dev
    Get Text    h1    ==    Playwright enables reliable end-to-end testing for modern web apps.

Copy file from source to Target
    OperatingSystem.Copy File    ${copy_this}    ${tPath}