*** Settings ***
Library           SeleniumLibrary

*** Variables ***
# General
${URL}                        https://mediverse.id/ 
${BROWSER}                    chrome
${CLOSE_POPUP}                //div[@id="portal"]/div/div/div
${CLOSE_MITRA}                //div[@id='portal']/div/div/div

# Home
${BUTTON_DOWNLOAD}            //button[.//span[text()='Download App']]
${BUTTON_GABUNG_MITRA}        //button[text()='Gabung Mitra']

# Produk
${PRODUK}                     //a[text()='Produk']
${CLICK_Madevo}               //div[contains(@class, 'w-[158px] xl:w-[339px]') and .//h1[text()='Medevo']]
${CLICK_Medpharm}             //div[contains(@class, 'w-[158px] xl:w-[339px]') and .//h1[text()='Medpharm']]
${CLICK_Medpoint}             //div[contains(@class, 'w-[158px] xl:w-[339px]') and .//h1[text()='Medpoint']]
${CLICK_EHR}                  //div[contains(@class, 'w-[158px] xl:w-[339px]') and .//h1[text()='EHR']]
${VALIDASI_Madevo}            //div[contains(@class, 'px-4 py-4 flex flex-col items-center') and .//h1[text()='MEDEVO']]
${VALIDASI_Medpharm}          //div[contains(@class, 'px-4 py-4 flex flex-col items-center') and .//h1[text()='MEDPHARM']]
${VALIDASI_Medpoint}          //div[contains(@class, 'px-4 py-4 flex flex-col items-center') and .//h1[text()='MEDPOINT']]
${VALIDASI_EHR}               //div[contains(@class, 'px-4 py-4 flex flex-col items-center') and .//h1[text()='EHR']]

# Mitra
${MITRA}                      //a[text()='Mitra']
${BUTTON_MITRA}               //button[text()='Mendaftar Kemitraan']

# Blog
${BLOG}                       //a[text()='Blog']

# Promo
${PROMO}                       //a[text()='Promo']

# Tentang Kami
${ABOUT}                       //a[text()='Tentang Kami']
${BUTTON_KONTAK_KAMI}          //button[text()='Kontak Kami']

*** Test Cases ***
Open Mediverse
    Open Browser                     ${URL}                         ${BROWSER}         
    Maximize Browser Window         
    Wait Until Element Is Visible    ${CLOSE_POPUP}                  5s
    Click Element                    ${CLOSE_POPUP} 

    Wait Until Element Is Visible    ${BUTTON_GABUNG_MITRA}
    Click Element                    ${BUTTON_GABUNG_MITRA}
    Click Element                    ${CLOSE_MITRA}        

    Wait Until Element Is Visible    ${BUTTON_DOWNLOAD}             5s             
    Click Element                    ${BUTTON_DOWNLOAD}                            
    Close Browser                                                                  
    
Open Product
    Open Browser                         ${URL}                ${BROWSER}                               
    Maximize Browser Window          
    Wait Until Element Is Visible        ${CLOSE_POPUP}       5s
    Click Element                        ${CLOSE_POPUP} 
    Click Element                        ${PRODUK}

# Validasi Elemen
    # Madevo
    Scroll Element Into View             ${CLICK_Madevo}                            # Scroll
    Click Element                        ${CLICK_Madevo}
    Scroll Element Into View             ${VALIDASI_Madevo}
    Wait Until Element Is Visible        ${VALIDASI_Madevo}      5s
    Element Should Be Visible            ${VALIDASI_Madevo}    
    
    # Medpharm
    Scroll Element Into View             ${CLICK_Medpharm}                            # Scroll
    Click Element                        ${CLICK_Medpharm}
    Scroll Element Into View             ${VALIDASI_Medpharm}
    Wait Until Element Is Visible        ${VALIDASI_Medpharm}     5s
    Element Should Be Visible            ${VALIDASI_Medpharm}    
    
    # Medpoint
    Scroll Element Into View             ${CLICK_Medpoint}                            # Scroll
    Click Element                        ${CLICK_Medpoint}
    Scroll Element Into View             ${VALIDASI_Medpoint}
    Wait Until Element Is Visible        ${VALIDASI_Medpoint}     5s
    Element Should Be Visible            ${VALIDASI_Medpoint}    
    
    # EHR
    Scroll Element Into View             ${CLICK_EHR}                            # Scroll
    Click Element                        ${CLICK_EHR}
    Scroll Element Into View             ${VALIDASI_EHR}
    Wait Until Element Is Visible        ${VALIDASI_EHR}           5s
    Element Should Be Visible            ${VALIDASI_EHR}    
    Close Browser

Open Mitra
    Open Browser                         ${URL}                ${BROWSER}                               
    Maximize Browser Window          
    Wait Until Element Is Visible        ${CLOSE_POPUP}       5s
    Click Element                        ${CLOSE_POPUP} 
    Click Element                        ${MITRA}
    Scroll Element Into View             ${BUTTON_MITRA}
    Click Element                        ${BUTTON_MITRA}
    Click Element                        ${CLOSE_MITRA}        
    Sleep    5s
    Close Browser

Open Blog
    Open Browser                         ${URL}                ${BROWSER}                               
    Maximize Browser Window          
    Wait Until Element Is Visible        ${CLOSE_POPUP}       5s
    Click Element                        ${CLOSE_POPUP} 
    Click Element                        ${BLOG}

    Close Browser

Open Promo
    Open Browser                         ${URL}                ${BROWSER}                               
    Maximize Browser Window          
    Wait Until Element Is Visible        ${CLOSE_POPUP}       5s
    Click Element                        ${CLOSE_POPUP} 
    Click Element                        ${PROMO}

    Close Browser

Open Tentang Kami
    Open Browser                         ${URL}                ${BROWSER}                               
    Maximize Browser Window          
    Wait Until Element Is Visible        ${CLOSE_POPUP}       5s
    Click Element                        ${CLOSE_POPUP} 
    Click Element                        ${ABOUT}
    Wait Until Element Is Visible        ${BUTTON_KONTAK_KAMI}
    Click Element                        ${BUTTON_KONTAK_KAMI}
    Click Element                        ${CLOSE_MITRA} 

    Close Browser    
    
*** Keywords ***
