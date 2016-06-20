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