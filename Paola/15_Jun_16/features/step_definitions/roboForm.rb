Given(/^I visit RoboForm page$/) do
  visit ('http://www.roboform.com/filling-test-shopping-cart')
end
When(/^I fill form$/) do |table|	
	@table =  table.raw
	@table.each do |x|
		type = x[0]
		label = x[1]
		value = x[2]	
		label_found = page.find('td',:text => label)
		if type == 'Input'			
			label_found.find(:xpath,".//following-sibling::"+type+"[1]").set value
		elsif type == 'Select'
			label_found.find(:xpath,".//following-sibling::"+type+"[1]").select value
		end
	end	
end
When(/^I click on Reset button$/) do	
	page.click_button('Reset')
end
Then(/^I should see all fields with empty data$/) do |table|
	@table =  table.raw
	@table.each do |x|		
		label = page.find('td',:text => x[0])
		value = label.find(:xpath, './/following-sibling::input[1]').text
		expect(value).to eq ("")
	end	
end