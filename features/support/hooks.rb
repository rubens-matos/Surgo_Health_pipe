Before do
  page.current_window.maximize
end

#After do
#  screenshot = page.save_screenshot("allure-results/temp_shot.png")

#  Allure.add_attachment(
#    name: "Screenshot",
#    type: Allure::ContentType::PNG,
#    source: File.open(screenshot),
#  )
#end

#After do |scenario|

#at_exit do
#  time = Time.now.getutc
#  ReportBuilder.configure do |config|
#  config.json_path = 'report.json'
#  config.report_path = 'cucumber_web_report'
#  config.report_types = [:html]
#  config.report_tabs = %w[Overview Features Scenarios Errors]
#  config.report_title = 'Cucumber Report Builder web automation test results'
#  config.compress_images = false
#  config.additional_info = { 'Project name' => 'Surgo Health', 'Platform' => 'Integration', "Browser" => get_name_browser, 'Report generated' => time }
#  config.color = "blue"
#  end
#  ReportBuilder.build_report
#  end
#end
After do |scenario|
  #   add_screenshot(scenario)

  if scenario.failed?
  #    add_browser_logs
  end
end

def add_screenshot(scenario)
  png = page.driver.screenshot_as(:png)
  path = (0..16).to_a.map{|a| rand(16).to_s(16)}.join + '.png' 
  File.open(path, 'wb') {|io| io.write(png)}
  

  nome_cenario = scenario.name.gsub(/[^A-Za-z0-9]/, '')
  nome_cenario = nome_cenario.gsub(' ','_').downcase!
  screenshot = "log/screenshots/#{nome_cenario}.png"
  page.save_screenshot(screenshot)
  #embed(screenshot, 'image/png', 'Print #{encoded_img})')
  #embed("data:image/png;base64,#{encoded_img}",'image/png')
  embed(path, 'image/png')
end

def add_browser_logs
  time_now = Time.now
  # Getting current URL
  current_url = Capybara.current_url.to_s
  # Gather browser logs
  logs = page.driver.browser.manage.logs.get(:browser).map {|line| [line.level, line.message]}
 # Remove warnings and info messages
  logs.reject! { |line| ['WARNING', 'INFO'].include?(line.first) }
  logs.any? == true
  embed(time_now.strftime('%Y-%m-%d-%H-%M-%S' + "\n") + ( "Current URL: " + current_url + "\n") + logs.join("\n"), 'text/plain', 'BROWSER ERROR')
end

at_exit do
  time = Time.now.getutc
  ReportBuilder.configure do |config|
  config.json_path = 'report.json'
  config.report_path = 'cucumber_web_report'
  config.report_types = [:html]
  config.report_tabs = %w[Overview Features Scenarios Errors]
  config.report_title = 'Cucumber Report Builder web automation test results'
  config.compress_images = false
  config.additional_info = { 'Project name' => 'Surgo Health', 'Platform' => 'Integration', 'Report generated' => time }
  end
  ReportBuilder.build_report
end
