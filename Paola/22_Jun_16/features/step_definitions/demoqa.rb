Given(/^I open demoqa page$/) do
  visit('http://demoqa.com')
  page.driver.browser.manage.window.maximize
end
When(/^I select (.*?) option$/) do |menu|
  page.find('.menu', :text=> menu).click
end
Then(/^I should see "(.*?)" title displayed$/) do |main_title|
	expect(page.find('h1').text).to eql main_title
end
When (/^I click on (.*?) button$/) do |button|  
  page.click_button button
end

Then (/^I should see "(.*?)" validation message with "(.*?)"$/) do |times, message| 
  page.assert_text(message, :count => times)
end

Given (/^I fill the passenger Information fields in New Request Screen$/) do |table|
	values = table.rows_hash
	values.each_pair do |label,text|
		label_found = page.find('label', :text => label)
		label_found.find(:xpath, '//following-sibling::input[1]').set text
	end
end