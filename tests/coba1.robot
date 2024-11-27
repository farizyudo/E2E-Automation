*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                         https://mediverse.id/
${BROWSER}                     chrome
${CLOSE_POPUP}                 //div[@id="portal"]/div/div/div
${BTN_DOWNLOAD}                //button[.//span[text()='Download App']]
${BUTTON_GABUNG_MITRA}        //button[text()='Gabung Mitra']

*** Test Cases ***
Download
    Open Browser                       ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible      ${CLOSE_POPUP}      
    Click Element                      ${CLOSE_POPUP}
    Wait Until Element Is Visible      ${BTN_DOWNLOAD}        10s

    Click Element                      ${BTN_DOWNLOAD}
    Sleep                              5s                                            

    Close Browser

Input Form
    Open Browser                       ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible      ${CLOSE_POPUP}      
    Click Element                      ${CLOSE_POPUP}
    Wait Until Element Is Visible      ${BUTTON_GABUNG_MITRA}        5s
    Click Element                      ${BUTTON_GABUNG_MITRA}
    Input Text                          id=partner                   John Doe
    Input Text                          id=owner                     Not John Doe
    Input Text                          id=contact                   example@gmail.com