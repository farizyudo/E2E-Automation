*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            https://mediverse.id/
*** Test Cases ***
Open Mediverse
    Open Browser                         ${URL}                                               ${BROWSER}
    Maximize Browser Window        
    Wait Until Element Is Visible        xpath=//svg[@width="64" and @height="63"]            timeout=5
    Click Element                        xpath=//svg[@width="64" and @height="63"]
    Click Link                           Produk
    Close Browser

# Verify Navigation Links
#     Open Browser    https://example.com    chrome
#     Click Link    Produk
#     Wait Until Element Is Visible    xpath://div[@id='our-product']    5s
#     Location Should Be    https://example.com/#our-product
#     Close Browser

# Verify External Links
#     Open Browser    https://example.com    chrome
#     Click Link    xpath://a[@href='https://facebook.com/example']
#     Switch Window    NEW
#     Location Should Be    https://facebook.com/example
#     Close Browser

# Verify Contact Form
#     Open Browser    https://example.com    chrome
#     Input Text    id=name    John Doe
#     Input Text    id=email    john@example.com
#     Input Text    id=message    This is a test message.
#     Click Button    id=submit
#     Element Should Be Visible    xpath://div[@class='success-message']
#     Close Browser

    
    
    
    
    

    
    
*** Keywords ***
