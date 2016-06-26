Given(/^Navigate to robotform page$/) do
  visit 'http://www.roboform.com/filling-test-shopping-cart' 
end

When(/^Fill fields$/) do |table|
  @board = table.hashes
  @board.each do |hash|
  	#puts "HASH: #{hash}"
   #puts "KEY= #{key} points to VALUE= #{value}\n"
   	#puts "print key: hash['field']  and value hash['value'] "
   	values = hash.values
   	keys = hash.keys
   	#puts "print hasss: #{keys}  and value #{values}"

   	key = hash['field'].to_s
   	value = hash['value']
   #puts "print key: #{key}  and value #{value}"
   Helpers.fill_field(key, value)
  end
end

When(/^Click on reset button$/) do
  page.click_button('Reset')
end

Then(/^Verify all fields are empty$/) do |table|
	@result = table.hashes
  @result.each do |hash|
	 key = hash['field'].to_s
   expectedValue = hash['value']
   actualValue = Helpers.getDisplayedValueByField(key)
   expect(actualValue).to eq(expectedValue)
  end 
end

