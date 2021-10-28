#language: pt

@radio_buttons
Funcionalidade: Selecionar um filme utilizando radio buttons
  Sendo eu um usuário da plataforma
  Quero selecionar meu filme preferido
  Para validar se está ativo o radio buttons

@positivo
Cenário: Selecionar filme com sucesso
  Dado que estou na página de radio buttons
  Então vejo o radio button ativo
