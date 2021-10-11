Dado('que acessei a home de treinamento') do
  visit "/"
end

Então('vejo a url {string}') do |url|
  expect(page).to have_current_path(url)
end