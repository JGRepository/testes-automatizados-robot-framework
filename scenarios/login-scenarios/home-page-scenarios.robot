*** Settings ***
Resource    ../../settings/settings.robot
Resource    ../../resources/login-resources/login-resources.resource
Resource    ../../resources/home-page-resource/home-page.resource
Library     SeleniumLibrary
Library    Screenshot

*** Keywords ***
Verifica se os campos de um produto existem
    Should Not Be Empty    ${PRODUCTS.imageField}
    Should Not Be Empty    ${PRODUCTS.titleProduct}
    Should Not Be Empty    ${PRODUCTS.descriptionProduct}
    Should Not Be Empty    ${PRODUCTS.priceProduct}
    Should Not Be Empty    ${PRODUCTS.buttonProduct}
