
When(/^I open Google page$/) do
  visit('https://www.google.com.bo/')
end

Then(/^Google page should be displayed$/) do
  page.find_by_id('hplogo')
end

When(/^I search "([^"]*)"$/) do |phrase_to_search|
  page.find_by_id('lst-ib').set phrase_to_search
end

When(/^I click on Buscar button$/) do
  page.find('span.sbico').click
end

Then(/^I should see "([^"]*)" as a result$/) do |search_result|
  page.find('a', :text =>search_result)
end

