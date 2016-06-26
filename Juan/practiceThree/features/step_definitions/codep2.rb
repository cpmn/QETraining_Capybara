#Background
Given(/^the page to test$/) do
  visit 'http://www.roboform.com/filling-test-shopping-cart'

end

# Test cases
Given(/^the text field data:$/) do |table|
   @information=table.rows_hash
   @information.each do |key,value|
    p 'valores'
    p key
    p value
    page.find_field(key,:type => "text").set(value)

   end
end
# en esta parte tendria que poner otro tipo de componente
Given(/^the select data:$/) do |table1|
  # table is a Cucumber::MultilineArgument::DataTable
   @information2=table1.rows_hash
   @information2.each do |key1,value1|
    p 'valores1'
    p key1
    p value1
    #page.find_field(key,:type => "text").set(value)
    page.find(:xpath, key1).select(value1)

   end

end
Then(/^after press reset button all information should be empty$/) do
    page.find_button('Reset').click() 
    

    @information.each do |key,value|
    p 'valores'
    expect(page.find_field(key,:type => "text").set(value)).to be_empty

   end
end

