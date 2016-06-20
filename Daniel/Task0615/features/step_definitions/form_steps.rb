def execute_action(input)
	table = input.rows_hash
	table.each_pair do |label,value|
		if @shoppingCartDic[label] == 'input'
			name = page.find('td',:text => label)
			name.all(:xpath,'(.//following-sibling::input[1])').each_with_index do |item,index|
				name.find(:xpath,"(.//following-sibling::input[1])[#{index+1}]").set value	
			end
		elsif @shoppingCartDic[label] == 'select'
			name = page.find('td',:text => label)
			date_text = value.split("/")
			value = date_text[0]
			name.all(:xpath,'(.//following-sibling::select)').each_with_index do |item,index|
				name.find(:xpath,"(.//following-sibling::select[1])[#{index+1}]").select(value)
				if date_text.length > 1
					value = date_text[1]
				end
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
	page.all(:xpath,'(//form[1])[2]//following-sibling::input[@type="text" or @type="password"]').each_with_index do |item,index|
		expect(page.find(:xpath,"((//form[1])[2]//following-sibling::input[@type='text' or @type='password'])[#{index+1}]").value()).to be_empty
	end

	# Verify Select
	page.all(:xpath,'(//form[1])[2]//following-sibling::select').each_with_index do |item,index|
		node = page.find(:xpath,"((//form[1])[2]//following-sibling::select[1])[#{index+1}]") #.value()
		expect(node.value).to eq("").or eq("1").or eq("0").or eq("2011")
	end

	# Verify Check
	page.all(:xpath,'(//form[1])[2]//following-sibling::input[@type="checkbox"]').each_with_index do |item,index|
		expect(page.find(:xpath,"((//form[1])[2]//following-sibling::input[@type='checkbox'])[#{index+1}]")).not_to be_checked
	end

end

