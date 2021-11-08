      #language: pt

      @select_um
      Funcionalidade: Selecionar um ator de comédia
      Sendo que estou na página de seleção de atores
      Quero selecionar um ator de comédia
      Para mostrar a posição do ator selecionado na lista

      @select_simples
      Cenário: Selecionando ator com sucesso
      Dado que estou na página de lista de atores
      Quando seleciono um ator favorito
      Então vejo em que posição da lista ele está

      @select_simples_table
      Cenário: Selecionando atores um de cada vez
      Dado que estou na página de lista de atores
      Quando escolho um ator para selecionar
      | nome         | posicao_lista       |
      | Adam Sandler | Ator selecionado: 1 |
      | Chris Rock   | Ator selecionado: 2 |
      | Jim Carrey   | Ator selecionado: 3 |
      | Kevin James  | Ator selecionado: 4 |
      | Owen Wilson  | Ator selecionado: 5 |
      Então vejo em que posição da lista ele está com table