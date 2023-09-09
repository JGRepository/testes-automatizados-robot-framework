*** Settings ***
Library             SeleniumLibrary
Resource            ../scenarios/login-scenarios/login-scenarios.robot

Test Setup          Dado que eu acesse o site
Test Teardown       Fechar Browser


*** Test Cases ***
TC005 - Validando o login com sucesso
   E insira login e senha válidos - success
   Então devo entrar na tela de produtos