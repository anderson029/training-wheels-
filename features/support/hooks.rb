Before do
  page.driver.browser.manage.window.maximize

  # username = "admin"
  # password = "admin"
  # visit "http://#{username}:#{password}@#{Capybara.current_session.server.host}:#{Capybara.current_session.server.port}/"
end

After do |scenario|
  nome_cenario = scenario.name.gsub(" ", "_").downcase
  puts nome_cenario
  page.save_screenshot("logs/screenshot_evidency/#{nome_cenario}.png")
end
