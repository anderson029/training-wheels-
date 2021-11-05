#language: pt

@drag_and_drop
Funcionalidade: Arrastar Homem aranha para o time do Tony Stark
  Sendo que eu estou na tela Drag and Drop
  Quero arrastar a imagem do homem aranaha
  Para o time do Tony Stark

@drag
Cenário: Mudando homem aranha de time com sucesso
  Dado que estou na tela Drag and Drop
  Quando arrasto a imagem do homem aranha para a caixa do Stark
  Então verifico se a imagem está no time do stark