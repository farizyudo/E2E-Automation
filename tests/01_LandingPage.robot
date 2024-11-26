*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}                    chrome
${URL}                        https://mediverse.id/
# ${BUTTON_DOWNLOAD}          xpath://a[contains(@class, 'hover:text-[#5200FF]')]//span[text()='Download App']
${BUTTON_DOWNLOAD}            xpath://button[contains(@class, 'Button_button__primary__oL151')]
# ${DIV_LOCATOR_MADEVO}       xpath://div[contains(@class, 'w-[158px]') and contains(@class, 'bg-[#FAF9FF]')]
${DIV_LOCATOR_MADEVO}         xpath://div[contains(@class, 'bg-') and contains(@class, 'FAF9FF')]
${EXPECTED_TITLE_MADEVO}      Medevo
${EXPECTED_TEXT_MADEVO}       Layanan akses cepat ke dokter, kapan saja, di mana saja, melalui ponsel Anda.


*** Test Cases ***
Open Mediverse
    Open Browser                     ${URL}                     ${BROWSER}         # Membuka browser
    Maximize Browser Window          
    Wait Until Element Is Visible    ${BUTTON_DOWNLOAD}         10s                # Menunggu hingga elemen tombol terlihat di halaman dengan batas waktu 10 detik.
    # Scroll Element Into View       ${BUTTON_DOWNLOAD}                          
    Click Element                    ${BUTTON_DOWNLOAD}                            # Mengklik tombol "Download App". 
    Sleep                            2s                                            # Menunggu selama 3 detik (bisa disesuaikan).
    # Capture Page Screenshot                                                        # Mengambil screenshot halaman setelah mengklik tombol.
    Close Browser                                                                  # Menutup browser.
    
Open Product
    Open Browser                     https://mediverse.id/#our-product                ${BROWSER}                               
    Maximize Browser Window          
    Wait Until Element Is Visible    ${DIV_LOCATOR_MADEVO}                            10s
    ${title_madevo}=                 Get Text                                         xpath:${DIV_LOCATOR_MADEVO}//h1
    Should Be Equal                  ${title_madevo}                                  ${EXPECTED_TITLE_MADEVO}
    ${description_madevo}=           Get Text                                         xpath:${DIV_LOCATOR_MADEVO}//p
    Should Be Equal                  ${description_madevo}                            ${EXPECTED_TEXT_MADEVO}

    Close Browser

Open Mitra
    Open Browser                     https://mediverse.id/#partnership                    ${BROWSER}                               
    Maximize Browser Window        
    
    Close Browser

Open Blog
    Open Browser                     https://mediverse.id/#news                            ${BROWSER}                               
    Maximize Browser Window        
    
    Close Browser

Open Promo
    Open Browser                     https://mediverse.id/#promotion                        ${BROWSER}                               
    Maximize Browser Window        
    
    Close Browser

Open Tentang Kami
    Open Browser                     https://mediverse.id/#about-us                        ${BROWSER}
    Maximize Browser Window        
    
    Close Browser
    
    

    
    
*** Keywords ***
