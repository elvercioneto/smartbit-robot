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

    
![001-subir_api](https://github.com/elvercioneto/smartbit-robot/assets/6169190/6f64cd71-12e5-4bf3-ba32-3ff15403c597)

- Após isso, iremos colocar o site no ar:
    -	Em outra aba ir até a pasta WEB e rodar o comando npm run dev

    https://github.com/elvercioneto/smartbit-robot/assets/6169190/4f721e36-1c3e-45d4-8182-5c59d5bad1e6

- Subir o banco através do Docker
  
    [colocar gif aqui](https://github.com/elvercioneto/smartbit-robot/assets/6169190/6d88109e-4de4-4b5b-866c-23bd8923308f
  
- Logar no site http://localhost:3000/ e verificar se o banco está OK. ⚠ Nesse momento, fica dando erro e após pesquisar, descobri no site  https://cursos.alura.com.br/forum/topico-erro-password-authentication-failed-for-user-root-sqlstate-28p01-215361 que isso ocorre por conta de um conflito no PgSql, basta parar o serviço e o banco voltar a ficar disponível: 

https://github.com/elvercioneto/smartbit-robot/assets/6169190/5d735480-5d03-4f75-a543-dd20fe1210a1

- Abrir o VSCode na pasta do projeto e rodar os testes
    Aqui rodei os testes Web:

    colocar gif aqui
- Aqui é um exemplo do Log do Robot com todos os passos do teste: 

colocar gif aqui

- Agora vamos rodar os testes Mobile
 - Em uma outra aba do Git Bash, coloquei o servidor do Appium no ar:

 gif aqui

 - Abri o Android Studio e escolhi o device onde o teste será feito:

 gif aqui


- Com a ajuda do Appium Inspector, iniciei a sincronização com o device


-Executei o teste no device



