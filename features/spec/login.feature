# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como um cliente do site FakeEcommerce
  Que já possui cadastro
  Deseja realizar o login 

 Contexto:
    Dado que esteja na página inicial

  # Completar o cenário abaixo
  @login_valido
  Cenário: Realizar login
    Quando clicar no botão de login
    E será carregado a tela de autenticação
    E entro com o usuário 'teste2021@teste.com.br' e senha 'teste'
    Então será carregado a tela da minha conta

  # Completar o cenário abaixo
  @login_invalido
  Cenário: Login com falha
    Quando clicar no botão de login
    E será carregado a tela de autenticação
    E entro com o usuário 'teste2021' e senha '2021'
    Então será retornada a mensagem de email inválido
    