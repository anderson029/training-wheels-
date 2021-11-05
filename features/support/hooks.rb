Before do
  page.driver.browser.manage.window.maximize
end

After do |scenario|
  nome_feature = scenario.feature.name.gsub(" ", "_").downcase
  nome_cenario = scenario.name.gsub(" ", "_").downcase
  page.save_screenshot("logs/#{nome_feature}/#{nome_cenario}.png")
  Capybara.current_session.driver.quit
end
