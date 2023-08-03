*** Settings ***
Resource    ../../settings/settings.robot
Resource    ../../resources/login-resources/login-resources.resource
Library     SeleniumLibrary

*** Keywords ***
Dado que eu acesse o site
    Open Browser    ${URL.sauceDemo}    ${browser}

E não insira login nem Senha
    Wait Until Element Is Visible    ${LOGIN.btnLoging}
    Click Button    ${LOGIN.btnLoging}
    Wait Until Element Is Visible    ${LOGIN.errorText}
    ${textValidation}    Get Text    ${LOGIN.errorText}
    ${textValidation}    Should Contain    ${textValidation}   ${LOGIN_VALIDATIONS.error1}

Fechar Browser
    Close Browser

   