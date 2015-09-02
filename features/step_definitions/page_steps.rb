Given(/^I should be on the ([a-zA-Z0-9]+) screen$/) do |pageName|
  @pageName = Object.const_get("#{pageName}Page")
  page(@pageName).await({:timeout => 2, :retry_frequency => 0.05})
end

Given(/^I type "(.*?)" into the textfield$/) do |text|
  page = page(@pageName).await
  page.input_field_enter_text(text)
end

Given(/^I press the next button$/) do
  page = page(@pageName).await
  page.touch_next_button
end

Then(/^I result label should be "(.*?)"$/) do |text|
  page = page(@pageName).await
  page.assert_result_label(text)
end
