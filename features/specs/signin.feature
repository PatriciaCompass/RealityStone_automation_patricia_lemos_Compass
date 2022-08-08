#language: pt

Funcionalidade: Autenticação
  SENDO um usuário do SWAGLABS
  QUERO efetuar a autenticação
  PARA ter acesso na aplicação

  Contexto: Home
    Dado que esteja na aplicação

  Esquema do Cenário: Login
    Quando preencher os campos "<username>", "<Password>"
    E clicar em login
    Então deverá exibir a mensagem "<msg>"

  Exemplos:
  |     username    |  Password     |   msg   |  
  |   standard_user |  secret_sauce |         |

   

  