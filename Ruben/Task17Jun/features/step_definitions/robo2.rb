Given(/^I visit Roboform$/) do
  visit('')
end

And(/^I fill form:$/) do |table|
	table = table.rows_hash
	table.each_pair do |label, value|
		if label == 'Home Phone Number' || label == 'Company Phone' || label == 'Fax Number'
			label_found = page.find('td',:text => label)
			values = value.split("-")
			values.each_with_index do |num, index|
				label_found.find(:xpath, "(.//following-sibling::input[1])[#{index+1}]").set num
			end
		else
			label_found = page.find('td',:text => label)
			label_found.find(:xpath, './/following-sibling::input[1]').set value
		end
	end
end

And(/^I select fields:$/) do |table|
	table = table.rows_hash
	table.each_pair do |label, value|
		if(label == 'Expiration Date')
			values = value.split("-")
			i = 1
			values.each do |num|
				label_found = page.find('td',:text => label)
				label_found.find(:xpath, "(.//following-sibling::select[1])[#{i}]").select(num)
				i = i + 1
			end
		else
		label_found = page.find('td',:text => label)	
		label_found.find(:xpath, './/following-sibling::select[1]').select(value)
		end
	end
end

And(/^I checked Newsletter$/) do 
	page.check('newsletter')
end

When(/^I click Rest button$/) do
	page.find_button('Reset').click()
end

Then(/^Check all fields are empty$/) do |table|
	@table = table.raw
	@table.each do |label|
		label.each do |label2|
			if(label2 == 'State' || label2 == 'Shipping Method' || label2 == 'Payment Method' || label2 == 'Expiration Date' || label2 == 'Account Type')
				if(label2 == 'Expiration Date')
					label_found = page.find('td',:text => label2)
					expect(label_found.find(:xpath, "(.//following-sibling::select[1])[#{1}]").value()).to eq("1").or eq("2011")
					expect(label_found.find(:xpath, "(.//following-sibling::select[1])[#{2}]").value()).to eq("1").or eq("2011")
				end
			else
				if label2 == 'Home Phone Number' || label2 == 'Company Phone' || label2 == 'Fax Number'
					label_found = page.find('td',:text => label2)
					expect(label_found.find(:xpath, "(.//following-sibling::input[1])[#{1}]").value()).to be_empty
					expect(label_found.find(:xpath, "(.//following-sibling::input[1])[#{2}]").value()).to be_empty
					expect(label_found.find(:xpath, "(.//following-sibling::input[1])[#{3}]").value()).to be_empty
				else
					label_found = page.find('td',:text => label2)
					expect(label_found.find(:xpath, './/following-sibling::input[1]').value()).to be_empty.or eq("0")
				end
			end
		end
	end
end