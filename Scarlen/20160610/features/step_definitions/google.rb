When(/^I open google page$/) do
  visit ('/')
end

When(/^I open testing blog page$/) do
  visit ('')
end

When(/^I select "([^"]*)" check box$/) do |chk_option|
  page.check('vehicle',:option => 'Car')
end

When(/^I select "([^"]*)" option$/) do |radiobtn_option|
  page.choose('gender',:option => 'male')
end


When(/^I click on "([^"]*)" button$/) do |label_button|
  page.click_button(label_button)
end

When(/^I click on Cancelar on the dialog$/) do
  page.driver.browser.switch_to.alert.dismiss
end

When(/^I click on Aceptar on the dialog$/) do
  page.driver.browser.switch_to.alert.accept

end




