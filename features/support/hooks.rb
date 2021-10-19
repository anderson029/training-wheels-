
After do |scenario|
  nome_cenario = scenario.name.gsub(" ", "_").downcase
  puts nome_cenario
  page.save_screenshot("logs/screenshot_evidency/#{nome_cenario}.png")
end

