*** Settings ***
Library             SeleniumLibrary
Resource            ../scenarios/login-scenarios/login-scenarios.robot

Test Setup          Dado que eu acesse o site
Test Teardown       Fechar Browser


*** Test Cases ***
# TC001 - Validando mensagem login erro ao não digitar usuário
#     E não insira login nem Senha

# TC002 - Validando mensagem de login erro ao não digitar senha
#     E insira login e não insira senha

# TC003 - Validando mensagem ao digitar login e senha inválidos
#    E insira login e senha inválidos

# TC004 - Validando Login bloqueado
#    E insira login e senha válidos - block
#    E meu login esteja bloqueado

TC005 - Validando o login com sucesso
   E insira login e senha válidos - success
   Então devo entrar na tela de produtos