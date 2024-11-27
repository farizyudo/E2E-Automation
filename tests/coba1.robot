*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                         https://mediverse.id/
${BROWSER}                     chrome
${CLOSE_POPUP}                 //div[@id="portal"]/div/div/div
${BTN_DOWNLOAD}                //button[.//span[text()='Download App']]
*** Test Cases ***
Close Popup on Mediverse
    Open Browser                   ${URL}  ${BROWSER}
    Maximize Browser Window
    # Wait Until Element Is Visible  xpath=//div[@class='flex flex-wrap absolute cursor-pointer w-8 top-[-50px] right-[-30px]']  timeout=5
    # Click Element                  xpath=//div[@class='flex flex-wrap absolute cursor-pointer w-8 top-[-50px] right-[-30px]']

    Wait Until Element Is Visible      ${CLOSE_POPUP}      
    Click Element                      ${CLOSE_POPUP}
    Wait Until Element Is Visible    ${BTN_DOWNLOAD}        10s
    Click Element                    ${BTN_DOWNLOAD}
    Sleep                            5s                                            # Menunggu .
    Close Browser
# Buka ulang
#     Open Browser                   ${URL}  ${BROWSER}
#     Maximize Browser Window
#     Sleep    8s
#     Close Browser

    # Close Browser
