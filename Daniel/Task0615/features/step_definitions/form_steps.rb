Given(/^I open the borwser "([^"]*)"$/) do |page|
	visit(page)
end

Given(/^I fill "([^"]*)" with following data:$/) do |section, input|
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

