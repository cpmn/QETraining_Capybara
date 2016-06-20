Given(/^I open the borwser "([^"]*)"$/) do |page|
	visit(page)
end

Given(/^I fill following data:$/) do |input|
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
			name.find(:xpath,'(.//following-sibling::select[1])[1]').select(value)
		end
	end
end

Given(/^I fill folloqing Payment & Shipping Information:$/) do |payment|
	table = payment.rows_hash
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

When(/^I will click in "([^"]*)" button$/) do |button|
	page.find_button('Reset').click()
end

Then(/^The all field will be in initial state$/) do
	expect(page.find_field('02frstname',:type => "text").value()).to be_empty
	expect(page.find_field('04lastname',:type => "text").value()).to be_empty
	expect(page.find_field('20homephon_ac',:type => "text").value()).to be_empty
	expect(page.find_field('20homephon_pr',:type => "text").value()).to be_empty
	expect(page.find_field('20homephon_sf',:type => "text").value()).to be_empty
	expect(page.find_field('10address1',:type => "text").value()).to be_empty
	expect(page.find_field('13adr_city',:type => "text").value()).to be_empty
	expect(page.find(:xpath, '//Select[@name="14adrstate"]').value()).to be_empty
	expect(page.find_field('16addr_zip',:type => "text").value()).to be_empty
	expect(page.find_field('16addr_zip',:type => "text").value()).to be_empty
	expect(page.find_field('10address2',:type => "text").value()).to be_empty
	expect(page.find_field('05_company',:type => "text").value()).to be_empty
	expect(page.find_field('21workphon_ac',:type => "text").value()).to be_empty
	expect(page.find_field('21workphon_pr',:type => "text").value()).to be_empty
	expect(page.find_field('21workphon_sf',:type => "text").value()).to be_empty
	expect(page.find_field('21workphon_ex',:type => "text").value()).to be_empty
	expect(page.find_field('22faxphone_ac',:type => "text").value()).to be_empty
	expect(page.find_field('22faxphone_pr',:type => "text").value()).to be_empty
	expect(page.find_field('22faxphone_sf',:type => "text").value()).to be_empty
	# Verify Payment & Shipping Information
	expect(page.find(:xpath, '//Select[@name="ship_methd"]').value()).to eq("0")
	expect(page.find(:xpath, '//Select[@name="40cc__type"]').value()).to eq("0")
	expect(page.find_field('44cc_uname',:type => "text").value()).to be_empty
	expect(page.find_field('41ccnumber',:type => "text").value()).to be_empty
	expect(page.find(:xpath, '//Select[@name="42ccexp_mm"]').value()).to eq("1")
	expect(page.find(:xpath, '//Select[@name="43ccexp_yy"]').value()).to eq("2011")
	expect(page.find_field('24emailadr',:type => "text").value()).to be_empty
	expect(page.find(:xpath, '//Select[@name="shopr_type"]').value()).to be_empty
	expect(page.find(:xpath, '(//tr/td[*]/input[@name="31password"])[1]').value()).to be_empty
	expect(page.find(:xpath, '(//tr/td[*]/input[@name="31password"])[2]').value()).to be_empty
	expect(page.find_field('32passques',:type => "text").value()).to be_empty
	expect(page.find_field('newsletter',:type => "checkbox")).not_to be_checked
end

