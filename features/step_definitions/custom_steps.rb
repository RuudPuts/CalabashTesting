# Given(/^I am on the input screen$/) do
#   @current_page = page(InputPage).await(timeout: 30)
# end

# Given(/^I type "(.*?)" into the textfield$/) do |text|
#   @current_page.textfield.text = text
# end

# Given(/^I touch the (.*?) button$/) do |text|
#   @current_page.next_button.tap
# end

# Then(/^I am on the result screen$/) do
#   @current_page = page(ResultPage).await(timeout: 30)
# end