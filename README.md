# Projeto de automação de testes WEB com Robot Framework

Para rodar o projeto tenha instalado o Python e o Robot Framework (pip install robotframework)

Tenha também a versão atualizada do webdriver
* Nos cenários de teste foi utilizado o navegador GOOGLE CHROME
* Verifique a versão do seu navegador para realizar a instalação do arquivo webdriver correto em (...) -> Ajuda -> Sobre o google chrome -> Versão XXX.Y.ZZZZ
* Baixe a versão do chromeDriver igual a numerção de XXX
* Cole o arquivo chromeDriver.exe na pasta de scrips do python (seuUsuário/AppData\Local\Programs\Python\Python311\Scripts\)

# Para executar TODAS as SWITCHES de testes rode o comando
robot -d results/all-tests-results-log test-cases


# Para executar os testes da página de LOGIN rode o comando
robot -d results/login test-cases/login-tests.robot

# Para executar os testes da página de HOME-PAGE rode o comando
robot -d results/home-page test-cases/home-page.robot