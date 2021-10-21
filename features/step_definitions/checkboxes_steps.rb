Dado('que acesso a página de filmes') do
  visit "/checkboxes"
end

Quando('marco os filmes que já assisti:') do |table|
  filmes = table.hashes
  filmes.each do |nome_filme|
    @filme = nome_filme[:filme].to_s
  end

  @homem_ferro = find('input[type="checkbox"]:nth-child(3)').set (true)
  @thor = find('input[type="checkbox"]:nth-child(5)').set (true)
  @vingadores = find('input[type="checkbox"]:nth-child(7)').set (false)
  @guardioes = find('input[type="checkbox"]:nth-child(9)').set (false)
  @homem_formiga = find('input[type="checkbox"]:nth-child(11)').set (false)
end

Então('vejo os filmes marcados') do
  # para validar se esta ticado so passar o .to_to be checked
  expect(@homem_ferro).to be_checked
  expect(@homem_ferro).to be_checked
  # para validar se não esta ticado so passar o .not_to be checked
  expect(@vingadores).not_to be_checked
  expect(@guardioes).not_to be_checked
  expect(@homem_formiga).not_to be_checked
end