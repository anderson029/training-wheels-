Dado("que estou na página de lista de atores") do
  visit "/apps/select2/single.html"
end

Quando("seleciono um ator favorito") do
  find("[class='selection']").click
  result = find("[class='select2-results']")
  @ator = result.all("ul li").sample.select_option
end

Então("vejo em que posição da lista ele está") do
  ator_selecionado = find("[class='select2-selection__rendered']").text
  puts ator_selecionado

  if (ator_selecionado == "Adam Sandler")
    posicao = find("[class='ng-binding']").text
    expect(posicao).to include "Ator selecionado: 1"
  elsif (ator_selecionado == "Chris Rock")
    posicao = find("[class='ng-binding']").text
    expect(posicao).to include "Ator selecionado: 2"
  elsif (ator_selecionado == "Jim Carrey")
    posicao = find("[class='ng-binding']").text
    expect(posicao).to include "Ator selecionado: 3"
  elsif (ator_selecionado == "Kevin James")
    posicao = find("[class='ng-binding']").text
    expect(posicao).to include "Ator selecionado: 4"
  elsif (ator_selecionado == "Owen Wilson")
    posicao = find("[class='ng-binding']").text
    expect(posicao).to include "Ator selecionado: 5"
  else
    raise "Nenhum ator foi selecionado!"
  end
end

Quando("escolho um ator para selecionar") do |table|
  table = table.hashes

  table.each do |table|
    nome_ator = table[:nome].to_s
    posicao_ator = table[:posicao_lista].to_s

    find("[class='selection']").click
    find("[class='select2-search__field']").set nome_ator
    expect(find("[class='ng-binding']").text).to include posicao_ator
  end
end

Então("vejo em que posição da lista ele está com table") do
  pending # Write code here that turns the phrase above into concrete actions
end
