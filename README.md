# Projeto de testes automatizados criado no curso Universo Robot Framework
  
## Disclaimer ⚠
    Esse Readme está em construção, em mais alguns dias, ele estará completo.

## SUT (Software Under Test)
Utilizaremos o sistema Smartbit(uma paródia da SmartFit), um aplicativo de Gestão de Academias para realizar testes Web, API e Mobile.  


## Setup 

Precisaremos instalar algumas ferramentas:

-  [Git e GitBash](https://git-scm.com/) - Ferramenta para versionamento de código e interface de linha de comando
-  [VSCode](https://code.visualstudio.com/) - Editor de código
-  [Node.js](https://nodejs.org/en) - Plataforma de desenvolvimento/automação (versão recomendada Node 18 pra cima)
-  [Python](https://nodejs.org/en) - Plataforma na qual o Robot foi construído)
-  [RobotFramework](https://nodejs.org/en) - Framework de automação de testes, também pode ser utilizado para RPA
- [Docker](https://www.docker.com/) - Ferramenta para levantar containers através de imagens, aqui utilizaremos um banco PostgreSQL
-  [Android Studio](https://developer.android.com/studio?hl=pt-br) - IDE para desenvolvimento de softwares para Android
-  [Appium](https://npmjs.com/) -  Ferramenta open-source, multi-plataforma para automação de testes de aplicações nativas, híbridas e com suporte a simuladores e execução em aparelhos reais para plataformas iOS e Android 
-  [Appium Inspector](https://appium.io/) - Interface gráfica para inspecionar elementos de uma aplicação
-  [Insomnia](https://insomnia.rest/) - Ferramenta para fazer design, teste e documentar APIsRest

## Metas

 - Configurar o Robot pra testar aplicações Web utilizando a biblioteca Browser, que roda o Playwright por "debaixo dos panos"

- Consumir APIs Rest para fazer testes de integração com o Robot Framework

- Testar aplicativos móveis com foco em Android, utilizando o Appium


## Executando os testes

- Após a instalação das ferramentas, precisamos colocar a API no ar, para isso devemos:
    -	Abrir o prompt de commando e ir até a pasta API e rodar o comando npm run dev  

https://github.com/elvercioneto/smartbit-robot/assets/6169190/d6e04af3-ba62-45f5-9c69-1d560044fed4

- Após isso, iremos colocar o site no ar:
    -	Em outra aba ir até a pasta WEB e rodar o comando npm run dev

https://github.com/elvercioneto/smartbit-robot/assets/6169190/6dfa34b9-0c15-429e-8ea1-ad74734ec54e

- Subir o banco através do Docker
  
https://github.com/elvercioneto/smartbit-robot/assets/6169190/eced773c-0932-4d5d-853f-160c2d589422
  
- Logar no site http://localhost:3000/ e verificar se o banco está OK. ⚠ Nesse momento, fica dando erro e após pesquisar, descobri no site  https://cursos.alura.com.br/forum/topico-erro-password-authentication-failed-for-user-root-sqlstate-28p01-215361 que isso ocorre por conta de um conflito no PgSql, basta parar o serviço e o banco voltar a ficar disponível: 

https://github.com/elvercioneto/smartbit-robot/assets/6169190/1e184f68-1f6c-46ee-8537-792db790bd0f

- Abrir o VSCode na pasta do projeto e rodar os testes
    Aqui rodei os testes Web:

https://github.com/elvercioneto/smartbit-robot/assets/6169190/6a0fec01-ea4c-4e71-91f8-31d3c259551c

- Aqui é um exemplo do Log do Robot com todos os passos do teste: 

https://github.com/elvercioneto/smartbit-robot/assets/6169190/5200c74e-8ac4-455a-9ba6-338b7cc2005d

- Agora vamos rodar os testes Mobile
 - Em uma outra aba do Git Bash, coloquei o servidor do Appium no ar:

https://github.com/elvercioneto/smartbit-robot/assets/6169190/ae28cbd7-dadb-4f31-bf51-bf91f02ac36d

 - Abri o Android Studio e escolhi o device onde o teste será feito:

 https://github.com/elvercioneto/smartbit-robot/assets/6169190/94ef7bb8-b795-4bba-9279-abd7eeba21ae

- Com a ajuda do Appium Inspector, iniciei a sincronização com o device

https://github.com/elvercioneto/smartbit-robot/assets/6169190/9fa70bc6-7961-426b-8d36-6016e55a39f9

-Executei o teste no device

https://github.com/elvercioneto/smartbit-robot/assets/6169190/5a211cfe-fe56-41e3-a40e-241fbede1750



