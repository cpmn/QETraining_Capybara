Given(/^I open testing blog page$/) do
  visit ('http://only-testing-blog.blogspot.in/2013/09/test.html')
  page.driver.browser.manage.window.maximize
end

When(/^I check option I have a car$/) do  
  page.check('vehicle',:option => 'Car')
end

When(/^I select my gender Female$/) do
  page.choose('gender',:option => 'female')
end

When(/^I click on (.*?) button$/) do |button|
  page.click_button(button)
end

When(/^I click on Cancel button from Alert$/) do  
  page.driver.browser.switch_to.alert.dismiss
end

When(/^I click on Accept button from Alert$/) do  
  page.driver.browser.switch_to.alert.accept
end

Then (/^I should see message "(.*?)"$/) do |message| 
  page.find('#demo', :text => message) 
end