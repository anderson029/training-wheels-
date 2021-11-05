Dado("que estou na página de lista suspensa") do
  visit "/dropdown"
end

Então("escolho um personagem") do
  # Clicando com ruby
  @tony_stark = find("#dropdown :nth-child(4)").click

  # Selecionando com capybara
  @tony_stark = find("#dropdown :nth-child(4)").select_option

  # Sorteando personagem na lista com sample

  @personagem = find("#dropdown")
  @personagem.all("option").sample.select_option
end
