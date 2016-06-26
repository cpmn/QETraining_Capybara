Given(/^I open a search page$/) do
  visit('http://www.google.com')
end

When(/^I fill the phrase "(.*?)" in search field$/) do |word|
	page.fill_in'lst-ib',:with => word
end

When(/^I click on button "(.*?)"$/) do |button|
	page.click_on(button)
  
end

Then(/^I get the result "(.*?)"$/) do |result|
  page.find 'h3',:text => result
end
