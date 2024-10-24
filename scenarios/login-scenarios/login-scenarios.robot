*** Settings ***
Resource    ../../settings/settings.robot
Resource    ../../resources/login-resources/login-resources.resource
Resource    ../../resources/home-page-resource/home-page.resource
Library     SeleniumLibrary
Library    Screenshot

*** Keywords ***
Dado que eu acesse o site
    Open Browser    ${URL.sauceDemo}    ${browser}     options=add_argument("--headless")
Fechar Browser
    Close Browser

E não insira login nem Senha
    Wait Until Element Is Visible    ${LOGIN.btnLoging}
    Click Button    ${LOGIN.btnLoging}
    ${textValidation}    Get Text    ${LOGIN.errorText}
    ${textValidation}    Should Contain    ${textValidation}   ${LOGIN_VALIDATIONS.errorUsername}
    Capture Page Screenshot  ${loginScreenShoot}\TC001.jpg

E insira login e não insira senha
    Wait Until Element Is Visible    ${LOGIN.inpUsername}
    Input Text    ${LOGIN.inpUsername}    ${LOGIN.usernameValid}
    Click Button    ${LOGIN.btnLoging}
    ${textValidation}    Get Text    ${LOGIN.errorText}
    ${textValidation}    Should Contain    ${textValidation}   ${LOGIN_VALIDATIONS.errorPassword}
    Capture Page Screenshot    ${loginScreenShoot}TC002.jpg


E insira login e senha inválidos
    Wait Until Element Is Visible    ${LOGIN.inpUsername}
    Input Text    ${LOGIN.inpUsername}    ${LOGIN.error}
    Input Text    ${LOGIN.inpPassword}    ${LOGIN.error}
    Click Button    ${LOGIN.btnLoging}
    ${textValidation}    Get Text    ${LOGIN.errorText}
    ${textValidation}    Should Contain    ${textValidation}   ${LOGIN_VALIDATIONS.loginError}
    Capture Page Screenshot    ${loginScreenShoot}\TC003.jpg

E insira login e senha válidos - block
    Wait Until Element Is Visible    ${LOGIN.inpUsername}
    Input Text    ${LOGIN.inpUsername}    ${LOGIN.userLock}
    Input Text    ${LOGIN.inpPassword}    ${LOGIN.password}
    Click Button    ${LOGIN.btnLoging}
E meu login esteja bloqueado
    ${textValidation}    Get Text    ${LOGIN.errorText}
    ${textValidation}    Should Contain    ${textValidation}   ${LOGIN_VALIDATIONS.loginLock}
    Capture Page Screenshot    ${loginScreenShoot}\TC004.jpg

E insira login e senha válidos - success
    Wait Until Element Is Visible    ${LOGIN.inpUsername}
    Input Text    ${LOGIN.inpUsername}    ${LOGIN.usernameValid}
    Input Text    ${LOGIN.inpPassword}    ${LOGIN.password}
    Click Button    ${LOGIN.btnLoging}

Então devo entrar na tela de produtos
    Wait Until Element Is Visible    ${PRODUCTS.labelHeader}
    ${productsPage}    Get Text    ${PRODUCTS.labelHeader}
    Log To Console    ${productsPage}
    Should Be Equal    ${productsPage}       Products
    Capture Page Screenshot    ${loginScreenShoot}\TC005.jpg
