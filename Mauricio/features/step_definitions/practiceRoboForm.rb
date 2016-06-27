Given(/^I navigate to the webpage$/) do
	page.driver.browser.manage.window.maximize
	visit("http://www.roboform.com/filling-test-shopping-cart")
	
end

When(/^I fill the textboxes:$/) do |table|
	data = table.raw
	data.each do |x,y| 
		label = page.find('td',:text => x)
		textboxes = label.find_all('input', :visible => :all)
		number_of_textboxes = textboxes.count
		if number_of_textboxes == 1
			textboxes[0].set(y)
		else
			values = y.split('-')
			value_counter = 0
			textboxes.each do |element|
				element.set(values[value_counter])
				value_counter+=1
			end
		end
		
	end
end

Then(/^I verify the values of the textboxes:$/) do |table|
	data = table.raw	
	data.each do |x,y| 
		label = page.find('td',:text => x, :visible => :all)
		textboxes = label.find_all('input',:visible => :all)
		number_of_textboxes = textboxes.count
		if(y=='empty')
			value = ''
		else
			value = y
		end
		if number_of_textboxes == 1
			textboxes[0].assert_text(value)
		else
			values = y.split('-')
			value_counter = 0
			textboxes.each do |element|
				if(values[value_counter]=='empty')
					value = ''
				else
					value = values[value_counter]
				end
			element.assert_text(value)
			end
			value_counter+=1
		end
	end

end

When(/^I select the drowpdowns:$/) do |table|
	data = table.raw
	data.each do |x,y| 
		label = page.find('td',:text => x, :visible => :all)
		dropdowns = label.find_all('select', :visible => :all)
		number_of_dropdowns = dropdowns.count
		if number_of_dropdowns == 1
			#select_dropdown(dropdowns[0],y)
			dropdowns[0].click
			dropdowns[0].find('option', :text => y, :visible => :all).click
		else
			#select_dropdowns(dropdowns,y)
			values = y.split('-')
			value_counter = 0
			dropdowns.each do |element|
				element.click
				element.find('option', :text => values[value_counter], :visible => :all).click
				value_counter+=1
			end
		end
	end
end

Then(/^I verify the values of the dropdowns:$/) do |table|
	data = table.raw
	data.each do |x,y| 
		label = page.find('td',:text => x,:visible => :all)
		dropdowns = label.find_all('select',:visible => :all)
		number_of_dropdowns = dropdowns.count
		if(y=='empty')
			value = ''
		else
			value = y
		end
		if number_of_dropdowns == 1
			#verify_value_dropdown(comboboxes[0],y)
			dropdowns[0].find_all('option',:visible => :all)[0].assert_text(value)
		else
			values = value.split('-')
			value_counter = 0
			dropdowns.each do |element|
				if value == 'empty'
					element.find_all('option',:visible => :all)[0].assert_text(value)
				else	
					element.find_all('option',:visible => :all)[0].assert_text(values[value_counter])
				end
				value_counter+=1
			end
		end	
	end
end

When(/^I select the checkboxes:$/) do |table|
	data = table.raw
	label = page.find('td',:text => data[0][0])
	checkbox = label.find('input',:visible => :all).set(true)
end

When(/^I click on "([^"]*)" button:$/) do |button|
	page.find('input[value="'+button+'"]',:visible => :all).click
end
	





