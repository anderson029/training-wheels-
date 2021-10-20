#language: pt

Funcionalidade: Marcar Checkbox
  Sendo que estou na tela de Checkboxes
  Quero marcar os filmes favoritos
  Para marcar meus filmes favoritos

@checkboxes
Cenário: Marcar filmes favoritos
  Dado que estou na página checkboxes
  Quando marco meus filmes favoritos:
    | filme          |
    | Homem de ferro |
    | Thor           |
  Então válido se o filme foi marcado