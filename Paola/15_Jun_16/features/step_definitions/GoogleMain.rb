Given(/^I open the search page$/) do
  visit('http://www.google.com')
end
When(/^I set the search phrase "(.*?)"$/) do |phrase|
  page.fill_in 'lst-ib',:with => phrase
end
When(/^I click on button "(.*?)"$/) do |button_name|
  page.click_button button_name
end
Then(/^I should see the result "(.*?)"$/) do |result_expected|
  page.find 'h3',:text=> result_expected
end

