Before do
  page.current_window.maximize
end

After do
  screenshot = page.save_screenshot("allure-results/temp_shot.png")

  Allure.add_attachment(
    name: "Screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(screenshot),
  )
end

After do |scenario|

at_exit do
  time = Time.now.getutc
  ReportBuilder.configure do |config|
  config.json_path = 'report.json'
  config.report_path = 'cucumber_web_report'
  config.report_types = [:html]
  config.report_tabs = %w[Overview Features Scenarios Errors]
  config.report_title = 'Cucumber Report Builder web automation test results'
  config.compress_images = false
  config.additional_info = { 'Project name' => 'Surgo Health', 'Platform' => 'Integration', "Browser" => get_name_browser, 'Report generated' => time }
  config.color = "blue"
  end
  ReportBuilder.build_report
  end
end
