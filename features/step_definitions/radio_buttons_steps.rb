require "pry"
Dado("que estou na página de radio buttons") do
  visit "/radios"
end

Então("vejo o radio button ativo") do
  #utilizando xpath para pegar pelos "irmaos"
  find("#radios input:nth-child(3)").click
  #para utilizar o choose tem que passar o id
  binding.pry
  choose("cap")
end
