#helper
def fill_textField_values(table)
   @information=table.rows_hash
   @information.each do |key,value|
    p 'valores'
    p key
    p value
    page.find_field(key,:type => "text").set(value)

   end
 end
 
 def select_values(table1)
  @information2=table1.rows_hash
   @information2.each do |key1,value1|
    p 'valores1'
    p key1
    p value1
    page.find(:xpath, key1).select(value1)
  end
 end
def validate(table2)
 @information3=table2.rows_hash
   @information3.each do |key2,value2|
    if page.find_field(key2,:type => "text").text ==value2
      p 'el campo esta vacio'
      else
      p 'el campo tiene un valor'
      end
    
   end
end 

#Background
Given(/^the page to test$/) do
  visit 'http://www.roboform.com/filling-test-shopping-cart'

end

# Test cases
Given(/^the text field data:$/) do |table|
   fill_textField_values(table)
end

Given(/^the select data:$/) do |table1|
  select_values(table1)

end

Given(/^reset button is pressed$/) do
  page.find_button('Reset').click() 
end

Then(/^all information should be empty:$/) do |table2|
  validate(table2)
end


