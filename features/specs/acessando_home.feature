#language: pt


Funcionalidade: Acessar a home de treinamento

  Sendo um aluno do treinamento de automação
  Quero acessar a home 
  Para validar o acesso

@home @base_auth
Cenário: Acessar home
  Dado que acessei a home de treinamento
  Então vejo a url "https://training-wheels-protocol.herokuapp.com/basic_auth"