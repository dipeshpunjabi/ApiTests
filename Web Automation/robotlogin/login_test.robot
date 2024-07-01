*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://www.practo.com
${BROWSER}        chrome
${SEARCH_TERM}    dentist

*** Test Cases ***
Search Dentist and Book First Slot
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    xpath://*[@id="c-omni-container"]/div/div[2]/div/input    ${SEARCH_TERM}
    sleep   2s
    Select First Element
    Select First Doc
    Select Clinic
    Sleep    10s
    [Teardown]    Close Browser

*** Keywords ***
Select First Element
    Click Element    xpath://*[@id="c-omni-container"]/div/div[2]/div[2]/div[1]/div[1]
    sleep   3s

Select First Doc
    Click element    xpath://*[@id="container"]/div/div[4]/div/div[1]/div/div[3]/div[1]/div
    sleep   7s

Select Clinic
    Click Element   xpath://*[@id="react-tabs-62531"]/div/div[1]/div/div/div/div/div[2]/div[2]/div/button
    sleep   10s