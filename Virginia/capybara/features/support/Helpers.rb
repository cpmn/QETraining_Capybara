include Capybara::DSL

module Helpers
	def Helpers.fill_field(label, value)
		puts "Entering filll: #{label} ,value #{value}"
		if label == "State" || label == "Shipping Method" || label == "Payment Method" || label == "Account Type"
			puts "Filling dropdown's option select: #{label} ,value #{value}"
	  		label_found = page.find('td',:text => label)
	  		label_found.find(:xpath, './/following-sibling::select').select value
		else 
		  	puts "Filling textbox: #{label} ,value #{value}"
	  		label_found = page.find('td',:text => label)
	  		label_found.find(:xpath, './/following-sibling::input[1]').set value
		end   
	end

	def Helpers.getDisplayedValueByField(label)
		if label == "State" || label == "Shipping Method" || label == "Payment Method" || label == "Account Type"
	  		displayed_value = page.find('td',:text => label).find(:xpath, './/following-sibling::select').find('option[selected=""]').text
	  		puts "Getting selected value: #{label} ,value #{displayed_value}"
		else 
	  		displayed_value = page.find('td',:text => label).find(:xpath, './/following-sibling::input[1]').text
	  		puts "Getting textbox value: #{label} ,value #{displayed_value}"
		end 
		return displayed_value 
	end
end