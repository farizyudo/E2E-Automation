*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            https://mediverse.id/
*** Test Cases ***
Open Mediverse
    Open Browser                     ${URL}                                               ${BROWSER}
    # Maximize Browser Window        
    # Wait Until Element Is Visible        xpath=//svg[@width="64" and @height="63"]            timeout=5
    # Click Element                        xpath=//svg[@width="64" and @height="63"]
    # Click Link                           Produk
    Close Browser

Open Home
    Open Browser                     https://mediverse.id/#home-slider    ${BROWSER}                               
    Close Browser
    
Open Product
    Open Browser                     https://mediverse.id/#our-product    ${BROWSER}                               
    Close Browser

Open Mitra
    Open Browser                     https://mediverse.id/#partnership    ${BROWSER}                               
    Close Browser

Open Blog
    Open Browser                     https://mediverse.id/#news    ${BROWSER}                               
    Close Browser

Open Promo
    Open Browser                     https://mediverse.id/#promotion    ${BROWSER}                               
    Close Browser

Open Tentang Kami
    Open Browser                     https://mediverse.id/#about-us    ${BROWSER}                               
    Close Browser
    
    

    
    
*** Keywords ***
