#language: pt

@checkbox
Funcionalidade: Marcar filmes
  Sendo usuário da plataforma
  Quero marcar os filmes que ja assisti
  Para não repetir

@positivo 
  Cenário: Marcar filmes com sucesso
    Dado que acesso a página de filmes
    Quando marco os filmes que já assisti:
      | filme          |valor|
      | Homem de Ferro |10   |
      | Thor           |5    |
    Então vejo os filmes marcados