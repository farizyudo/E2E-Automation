*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            https://mediverse.id/
${BUTTON_DOWNLOAD}    xpath://a[contains(@class, 'hover:text-[#5200FF]')]//span[text()='Download App']

*** Test Cases ***
Open Mediverse
    Open Browser                     ${URL}                     ${BROWSER}         # Membuka browser
    Wait Until Element Is Visible    ${BUTTON_DOWNLOAD}         10s                # Menunggu hingga elemen tombol terlihat di halaman dengan batas waktu 10 detik.
    # Scroll Element Into View         ${BUTTON_DOWNLOAD}
    Click Element                    ${BUTTON_DOWNLOAD}                            # Mengklik tombol "Download App". 
    Sleep                            3s                                            # Menunggu selama 3 detik (bisa disesuaikan).
    # Capture Page Screenshot                                                        # Mengambil screenshot halaman setelah mengklik tombol.
    Close Browser                                                                  # Menutup browser.
    
# Open Product
#     Open Browser                     https://mediverse.id/#our-product                    ${BROWSER}                               
#     Maximize Browser Window        
    
#     Close Browser

# Open Mitra
#     Open Browser                     https://mediverse.id/#partnership                    ${BROWSER}                               
#     Maximize Browser Window        
    
#     Close Browser

# Open Blog
#     Open Browser                     https://mediverse.id/#news                            ${BROWSER}                               
#     Maximize Browser Window        
    
#     Close Browser

# Open Promo
#     Open Browser                     https://mediverse.id/#promotion                        ${BROWSER}                               
#     Maximize Browser Window        
    
#     Close Browser

# Open Tentang Kami
#     Open Browser                     https://mediverse.id/#about-us                        ${BROWSER}
#     Maximize Browser Window        
    
#     Close Browser
    
    

    
    
*** Keywords ***
