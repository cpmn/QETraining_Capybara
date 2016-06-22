Given(/^the page to test$/) do
  visit 'https://www.google.com.bo'
end

When(/^"([^"]*)" is writen on search text field$/) do |valueReceived|
  @value=valueReceived
  page.find_field('lst-ib',:type => "text").set(@value)
  # page.fill in 
end

When(/^click button is pressed$/) do
  # page.find_button('btnK').click()

  page.find_button('Buscar').click()
end

Then(/^expected result of the search is returned$/) do
  page.has_title? @value
  page.find 'h3',:text=> @value

  # page.find 'h3'; :text=>@value

end
