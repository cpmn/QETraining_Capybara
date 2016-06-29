# coding: utf-8

###### WHEN #############

When (/^I select "(.*?)" option$/) do |menu| 

  find('li.menu-item.menu-item-type-post_type.menu-item-object-page a', :text => menu).click
end

When (/^I click on "(.*?)" button$/) do |button|  

  page.click_button button
end

When (/^I fill the passanger information fields in New Request screen$/) do |table|  

  table = table.rows_hash
  table.each_pair do |label,value|

    case label
      
      when "First Name"
      	page.fill_in 'name_3_firstname', :with => ""
        page.fill_in 'name_3_firstname', :with => value
        page.find('#name_3_firstname').native.send_keys(:tab)

      when "Last Name"
        page.fill_in 'name_3_lastname', :with => ""
        page.fill_in 'name_3_lastname', :with => value
        page.find('#name_3_lastname').native.send_keys(:tab)

      when "Marital Status"
      	
      	page.find(:xpath, "//input[@value='#{value}']").click

      when "Hobby"
        page.find(:xpath, "//input[@value='#{value}']").click

      when "Country"
      	within('#dropdown_7') do
          find('option', :text => value).click
        end

      when "Date of Birth"
      	date_of_birth = value.split("-")
        within ('#mm_date_8') do
          find('option', :text => date_of_birth[0], :match => :prefer_exact).click
        end
        within ('#dd_date_8') do
          find('option', :text => date_of_birth[1], :match => :prefer_exact).click
        end
        within ('#yy_date_8') do
          find('option', :text => date_of_birth[2], :match => :prefer_exact).click
        end
      
      when "Phone Number"
        page.fill_in 'phone_9', :with => ""
        page.fill_in 'phone_9', :with => value
        page.find('#phone_9').native.send_keys(:tab)
      
      when "Username"
        page.fill_in 'username', :with => ""
        page.fill_in 'username', :with => value
        page.find('#username').native.send_keys(:tab)

      when "E-mail"
      	page.fill_in 'email_1', :with => ""
        page.fill_in 'email_1', :with => value
        page.find('#email_1').native.send_keys(:tab)

      when "About Yourself"
        page.fill_in 'description', :with => ""
        page.fill_in 'description', :with => value
        page.find('#description').native.send_keys(:tab)

      when "Password"
        page.fill_in 'password_2', :with => ""
        page.fill_in 'password_2', :with => value
        page.find('#password_2').native.send_keys(:tab)

      when "Confirm Password"	
      	page.fill_in 'confirm_password_password_2', :with => ""
        page.fill_in 'confirm_password_password_2', :with => value
        page.find('#confirm_password_password_2').native.send_keys(:tab)

    end
  end  
end

######### THEN ###########

Then (/^I should see "(.*?)" validation message with "(.*?)"$/) do |times, message| 

  assert_text(message, :count => times)
end

Then (/^I should see a confirmation message saying "(.*?)"$/) do |message| 

  page.has_css?('p.piereg_message', :text => message)
end

Then (/^I should see the same information displayed in the form$/) do |table|

  values = table.raw
  first_name = values[0]
  last_name = values[1]
  status = values[2]
  hobby = values[3]
  phone_number = values[4]
  username = values[5]
  email = values[6]
  about = values[7]

  expect(page).to have_xpath("//input[@id='name_3_firstname' and @value='#{first_name[1]}']")
  expect(page).to have_xpath("//input[@id='name_3_lastname' and @value='#{last_name[1]}']")
  expect(page).to have_xpath("//input[@value='#{status[1]}' and @checked='checked']")
  expect(page).to have_xpath("//input[@value='#{hobby[1]}' and @checked='checked']")
  expect(page).to have_xpath("//input[@id='phone_9' and @value='#{phone_number[1]}']")
  expect(page).to have_xpath("//input[@id='username' and @value='#{username[1]}']")
  expect(page).to have_xpath("//input[@id='email_1' and @value='#{email[1]}']")
  page.has_selector?('#description', :text => about[1])
  
end

Then (/^I should see an error message saying "(.*?)"$/) do |message| 

  page.has_css?('p.piereg_login_error', :text => message)
end