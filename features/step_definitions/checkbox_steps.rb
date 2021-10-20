Dado("que estou na página checkboxes") do
  visit "/checkboxes"
end

Quando("marco meus filmes favoritos:") do |filme|
  @filme = filme.hashes
  @filme.each do |valor|
    @filme = valor["filme"]
    puts @filme
    check("iron-man").uncheck

    #deu certo
    #find("input:nth-child(3)").click
    #sleep 5
  end
end

Então("válido se o filme foi marcado") do
  #pending # Write code here that turns the phrase above into concrete actions
end
