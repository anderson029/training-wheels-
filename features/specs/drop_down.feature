#language: pt

@drop_down
Funcionalidade: Selecionar um personagem da lista
  Sendo eu um usuário da plataforma
  Quero escolher um personagem da lista suspensa
  Para validar se o personagem foi escolhido

@drop_sucesso
Cenário: Escolher um personagem da lista com sucesso
  Dado que estou na página de lista suspensa
  Então escolho um personagem
  