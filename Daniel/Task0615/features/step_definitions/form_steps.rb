def execute_action(input)
	table = input.rows_hash
	table.each_pair do |label,value|
		if @shoppingCartDic[label] == 'input'
			name = page.find('td',:text => label)
			index = 1
			name.all(:xpath,'(.//following-sibling::input[1])').each do |item|
				name.find(:xpath,"(.//following-sibling::input[1])[#{index}]").set value	
				index += 1
			end
		elsif @shoppingCartDic[label] == 'select'
			name = page.find('td',:text => label)
			index = 1
			date_text = value.split("/")
			value = date_text[0]
			name.all(:xpath,'(.//following-sibling::select)').each do |item|
				name.find(:xpath,"(.//following-sibling::select[1])[#{index}]").select(value)
				if date_text.length > 1
					value = date_text[1]
				end
				index += 1
			end
		elsif @shoppingCartDic[label] == 'check'
			name = page.find('td',:text => label)
			name.find(:xpath,"(.//following-sibling::input[1])[1]").set(true)
		end
	end
end


Given(/^I open the borwser "([^"]*)"$/) do |page|
	visit(page)
end

Given(/^I fill following data:$/) do |input|
	execute_action(input)
end

Given(/^I fill folloqing Payment & Shipping Information:$/) do |input|
	execute_action(input)
end

When(/^I will click in "([^"]*)" button$/) do |button|
	page.find_button('Reset').click()
end

Then(/^The all field will be in initial state$/) do

	# Verify Imputs
	index = 1
	page.all(:xpath,'(//form[1])[2]//following-sibling::input[@type="text" or @type="password"]').each do |item|
		expect(page.find(:xpath,"((//form[1])[2]//following-sibling::input[@type='text' or @type='password'])[#{index}]").value()).to be_empty
		index += 1
	end

	# Verify Select
	index = 1
	page.all(:xpath,'(//form[1])[2]//following-sibling::select').each do |item|
		node = page.find(:xpath,"((//form[1])[2]//following-sibling::select[1])[#{index}]") #.value()
		expect(node.value).to eq("").or eq("1").or eq("0").or eq("2011")
		index += 1
	end

	# Verify Check
	index = 1
	page.all(:xpath,'(//form[1])[2]//following-sibling::input[@type="checkbox"]').each do |item|
		expect(page.find(:xpath,"((//form[1])[2]//following-sibling::input[@type='checkbox'])[#{index}]")).not_to be_checked
		index += 1
	end

end

