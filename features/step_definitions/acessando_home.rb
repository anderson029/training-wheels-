Dado('que acessei a home de treinamento') do
  visit "/"
  find("div ul li a", text: "Basic Auth").click
  sleep 5
end

Então('vejo a url {string}') do |url|
  expect(page).to have_current_path(url)
end