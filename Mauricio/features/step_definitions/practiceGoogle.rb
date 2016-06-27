Given(/^I open the search page$/) do
	page.driver.browser.manage.window.maximize
	visit("https://www.google.com.bo")
end

When(/^I set the search phrase "([^"]*)"$/) do |phrase|
	page.find('#lst-ib').set(phrase)
end

When(/^I click on button "([^"]*)"$/) do |button|
	page.find('button[value=\''+button+'\']').click
end

Then(/^I should see the result "([^"]*)"$/) do |result|
	expect(page.has_selector?('a', :text => result)).to be true
end