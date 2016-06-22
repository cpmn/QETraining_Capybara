Given(/^I open the search page$/) do
  visit 'https://www.google.com.bo'
end

When(/^I set teh search phrase "([^"]*)"$/) do |phrase|
  @value=phrase
  page.find_field('lst-ib',:type => "text").set(@value)
end

When(/^I click on button "([^"]*)"$/) do |buttonName|
  page.find_button('Buscar').click()
end

Then(/^I should see the result "([^"]*)"$/) do |result|
   
   page.find 'h3',:text=> result
end

