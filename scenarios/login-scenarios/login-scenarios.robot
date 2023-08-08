*** Settings ***
Resource    ../../settings/settings.robot
Resource    ../../resources/login-resources/login-resources.resource
Library     SeleniumLibrary
Library    Screenshot

*** Keywords ***
Dado que eu acesse o site
    Open Browser    ${URL.sauceDemo}    ${browser}
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
