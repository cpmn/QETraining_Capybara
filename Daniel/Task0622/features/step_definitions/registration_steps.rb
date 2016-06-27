Given(/^not "([^"]*)" message is displayed$/) do |message|
  expect(has_no_xpath?("//span[text()='#{message}']")).to be(true)
end

When(/^I Click in "([^"]*)" button$/) do |button|
  sleep 2
  if has_button?(button)
    page.find_button(button,).click
  end
end

Given(/^I Clicked in "([^"]*)" button$/) do |button|
  if has_button?(button)
    page.find_button(button,).click
  end
end

Then(/^"([^"]*)" message are highlighted$/) do | message |
  expect(has_xpath?("//span[text()='#{message}']")).to be(true)
end

Given(/^fill only required field:$/) do |input|
  table = input.rows_hash
    table.each_pair do |label, value|
      if label == "Hobby"
        page.find(:xpath,"(//div/label[text()='#{label}']//following-sibling::div//descendant::label[text()='#{value}']//following-sibling::input)[1]").set(true)
      else
        if label == "Username"
          value = get_uquine_name(value)
        elsif label == "E-mail"
          value = get_uquine_email(value)
        end

        page.find(:xpath,"//div/label[text()='#{label}']//following-sibling::input").set(value)
      end
    end
end

Then(/^I should see "([^"]*)"\.$/) do |message|
  expect(page.assert_text("#{message}")).to be(true)
end

Given(/^User is registerd$/) do
  puts "Registered"
end

When(/^I fill password required field:$/) do |input|
  table = input.rows_hash
    table.each_pair do |label, value|
        page.find(:xpath,"//div/label[text()='#{label}']//following-sibling::input").set(value)
    end
end