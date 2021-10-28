#language: pt

@checkbox
Funcionalidade: Marcar filmes
  Sendo usuário da plataforma
  Quero marcar os filmes que ja assisti
  Para não repetir

@positivo @tst
  Cenário: Marcar filmes com sucesso
    Dado que acesso a página de filmes
    Quando marco os filmes que já assisti:
      | filme          |
      | Homem de Ferro |
      | Thor           |
    Então vejo os filmes marcados