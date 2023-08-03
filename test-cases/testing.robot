*** Settings ***
Library             SeleniumLibrary
Resource            ../scenarios/login-scenarios/login-scenarios.robot

Test Setup          Dado que eu acesse o site
Test Teardown       Fechar Browser


*** Test Cases ***
TC001 - Validando mensagem login erro ao não digitar usuário
    E não insira login nem Senha
