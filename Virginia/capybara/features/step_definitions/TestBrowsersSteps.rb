Given(/^Navigate to google page$/) do
  #visit 'http://www.google.com' 
  visit '/' 
end

Given(/^Navigate to test page$/) do
  #visit 'http://www.google.com' 
  visit 'http://only-testing-blog.blogspot.in/2013/09/test.html' 
end

When(/^Select 'I have a car' checkbox$/) do
 page.check('vehicle',:option => 'Car')
end

When(/^Select 'Female' radio button$/) do
  page.choose('gender',:option => 'female')
end

When(/^Click on get confirmation button$/) do
  page.click_button('Get Confirmation')
end

When(/^Click on ok button in alert pop up$/) do
  page.driver.browser.switch_to.alert.accept
end

