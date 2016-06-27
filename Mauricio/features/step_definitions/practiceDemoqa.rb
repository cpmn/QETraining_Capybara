Given(/^I open the testing page$/) do
	page.driver.browser.manage.window.maximize
	visit("http://demoqa.com")
end

When(/^I select "([^"]*)" option$/) do |option|
	page.find('a', :text => option).click
end

Then(/^I should see "([^"]*)" title displayed$/) do |title|
	expect(page.has_selector?('h1', :text =>title)).to be true 
end

When(/^I click on "([^"]*)" button$/) do |button|
	page.find('input[value="'+button+'"]').click
end

Then(/^I should see "([^"]*)" validations messages with "([^"]*)"$/) do |message, number_validations|
	expect(page.has_selector?('span', :text => message, :count => number_validations.to_i)).to be true
end

Given(/^I fill the Passenger Information fields in New Request screen$/) do |table|
	data = table.raw
	data.each do |x,y| 
		textbox = page.find(:xpath,'//label[text()=\''+x+'\']/following-sibling::input[1]', :visible => :all)
		textbox.set(y)
	end
	
end

Given(/^I select the Passenger Information radio buttons in New Request screen$/) do |table|
	data = table.raw
	data.each do |x,y| 
		page.find(:xpath,'//label[text()=\''+x+'\']/following-sibling::input[1]', :visible => :all).click
	end
end

Given(/^I select the Passenger Information checkboxes in New Request screen$/) do |table|
	data = table.raw
	data.each do |x,y| 
		page.find(:xpath,'//label[text()=\''+x+'\']/following-sibling::input[1]', :visible => :all).click
	end
end

Given(/^I select the Passenger Information dropdowns in New Request screen$/) do |table|
	data = table.raw
	data.each do |x,y|
	dropdowns = page.find_all(:xpath,'.//label[text()=\''+x+'\']/following-sibling::select', :visible => :all)
	dropdowns_number = dropdowns.count
		if(dropdowns_number == 1)
			dropdowns[0].find(:xpath,'.//option[@value=\''+y+'\']', :visible => :all).select_option
		else
			values = y.split('-')
			value_counter = 0
				dropdowns.each do |element|
				element.find(:xpath,'.//option[@value=\''+y+'\']', :visible => :all).select_option
				value_counter+=1
				end
		end
	end
end

Then(/^I should see a message that says "([^"]*)"$/) do |message|
	expect(page.has_selector?('p', :text =>message)).to be true 
end

Then(/^I verify the Passenger Information fields value in New Request screen$/) do |table|
	data = table.raw
	data.each do |x,y| 
	print("selectooor: "+'//label[text()=\''+x+'\']/following-sibling::input[@value = \''+y+'\']')
		expect(page.has_selector?(:xpath,'//label[text()=\''+x+'\']/following-sibling::input[@value = \''+y+'\']', :visible => :all)).to be true 
	end
	
end

Then(/^I should see a error message that says "([^"]*)"$/) do |message|
	expect(page.has_selector?('strong', :text =>message)).to be true 
end

