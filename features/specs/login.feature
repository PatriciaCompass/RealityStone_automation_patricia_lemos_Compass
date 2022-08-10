#language: pt

Funcionalidade: Autenticação
  SENDO um usuário do SWAGLABS
  QUERO efetuar a autenticação
  PARA ter acesso na aplicação

  Contexto: Home
    Dado que esteja na aplicação

  Esquema do Cenário: Login
    Quando preencher os campos "<username>", "<password>"
    Então deverá clicar em login para exibir a mensagem "<msg>"

  Exemplos:
  |     username  |    password   |          msg                       |  
  | standard_user |  secret_sauce |                                    | 
  |               |  secret_sauce | Epic sadface: Username is required |  
  | standard_user |               | Epic sadface: Password is required |
  
   

  