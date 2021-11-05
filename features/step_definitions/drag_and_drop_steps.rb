Dado("que estou na tela Drag and Drop") do
  visit "/drag_and_drop"
end

Quando("arrasto a imagem do homem aranha para a caixa do Stark") do
  @time_stark = find("div.team-stark .column")
  @img_aranha = find("[alt='Homem Aranha']")
  @img_aranha.drag_to @time_stark
end

Então("verifico se a imagem está no time do stark") do
  expect(@time_stark).to have_css ("[alt='Homem Aranha']")
end
