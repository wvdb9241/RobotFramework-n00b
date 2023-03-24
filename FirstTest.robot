*** Comments ***
My first testcase

*** Settings ***
Library    Browser
Library    OperatingSystem

*** Variables ***
${sPath}   D:\\Playground\\Source\\
${tPath}   D:\\Playground\\Target\\


*** Test Cases ***
This is my testcase
    log  hello world

Example Test
    New Page  http://khanabook.weebly.com/store/c1/Featured_Products.html
    #Wait For Elements State    id=input-233928631404364620

Copy file from source to Target
    OperatingSystem.Copy File    ${sPath}readme.md   ${tPath}
  
