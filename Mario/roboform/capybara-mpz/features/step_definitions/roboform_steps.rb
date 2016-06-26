# coding: utf-8

###### WHEN #############

When (/^I open roboform web page$/) do 

  #visit 'http://www.roboform.com/filling-test-shopping-cart' 
  visit('/')
  page.driver.browser.manage.window.maximize

end

When (/^I fill the form with the following values$/) do |table| 

  table = table.rows_hash
  table.each_pair do |label,value|
    case label
      
      when "First Name"
        page.fill_in '02frstname', :with => ""
        page.fill_in '02frstname', :with => value
      
      when "Last Name"
        page.fill_in '04lastname', :with => ""
        page.fill_in '04lastname', :with => value
      
      when "Home Phone"
      phone_number = value.split("-")  
        page.fill_in '20homephon_ac', :with => ""
        page.fill_in '20homephon_ac', :with => phone_number[0]

        page.fill_in '20homephon_pr', :with => ""
        page.fill_in '20homephon_pr', :with => phone_number[1]

        page.fill_in '20homephon_sf', :with => ""
        page.fill_in '20homephon_sf', :with => phone_number[2]
      
      when "Address"    
        page.fill_in '10address1', :with => ""
        page.fill_in '10address1', :with => value
      
      when "City"
        page.fill_in '13adr_city', :with => ""
        page.fill_in '13adr_city', :with => value
      
      when "State"  
        within :xpath, "//select[@name='14adrstate']" do
          find('option', :text => value).click
        end
      
      when "Postal Code"
        page.fill_in '16addr_zip', :with => ""
        page.fill_in '16addr_zip', :with => value
      
      when "Shipping Method"
        within :xpath, "//select[@name='ship_methd']" do
          find('option', :text => value).click
        end
      
      when "Payment Method"
        within :xpath, "//select[@name='40cc__type']" do
          find('option', :text => value).click
        end
      
      when "Credit Card Name"
        page.fill_in '44cc_uname', :with => ""
        page.fill_in '44cc_uname', :with => value
      
      when "Credit Card Number"
        page.fill_in '41ccnumber', :with => ""
        page.fill_in '41ccnumber', :with => value
      
      when "Expiration Date"
        expiration_date = value.split("-")
        within :xpath, "//select[@name='42ccexp_mm']" do
          find('option', :text => expiration_date[0]).click
        end

        within :xpath, "//select[@name='43ccexp_yy']" do
          find('option', :text => expiration_date[1]).click
        end

      when "Email Address"
        page.fill_in '24emailadr', :with => ""
        page.fill_in '24emailadr', :with => value

      when "Account Type"
        within :xpath, "//select[@name='shopr_type']" do
          find('option', :text => value).click
        end

      when "Password"
        page.all(:xpath, "//input[@name='31password']")[0].set(value)

      when "Verify Password"
        page.all(:xpath, "//input[@name='31password']")[1].set(value)

      when "Hint Password"  
        page.fill_in '32passques', :with => ""
        page.fill_in '32passques', :with => value

      when "Newsletter"
        page.check('newsletter')
        
    end  
  end

end

When (/^I insert "(.*?)" in first name$/) do |first_name| 

  page.fill_in '02frstname', :with => ""
  page.fill_in '02frstname', :with => first_name
end

When (/^I insert "(.*?)" in last name$/) do |last_name| 

  page.fill_in '04lastname', :with => ""
  page.fill_in '04lastname', :with => last_name
end

When (/^I insert "(.*?)" "(.*?)" "(.*?)" in home phone number$/) do |number1, number2, number3| 

  page.fill_in '20homephon_ac', :with => ""
  page.fill_in '20homephon_ac', :with => number1

  page.fill_in '20homephon_pr', :with => ""
  page.fill_in '20homephon_pr', :with => number2

  page.fill_in '20homephon_sf', :with => ""
  page.fill_in '20homephon_sf', :with => number3
end

When (/^I insert "(.*?)" in address 1$/) do |address| 

  page.fill_in '10address1', :with => ""
  page.fill_in '10address1', :with => address
end

When (/^I insert "(.*?)" in city$/) do |city| 

  page.fill_in '13adr_city', :with => ""
  page.fill_in '13adr_city', :with => city
end

When (/^I select "(.*?)" in state$/) do |state| 

  within :xpath, "//select[@name='14adrstate']" do
    find('option', :text => state).click
  end
end

When (/^I insert "(.*?)" in postal code$/) do |postal_code| 

  page.fill_in '16addr_zip', :with => ""
  page.fill_in '16addr_zip', :with => postal_code
end

When (/^I select "(.*?)" in shipping method$/) do |shipping_method| 

  within :xpath, "//select[@name='ship_methd']" do
    find('option', :text => shipping_method).click
  end
end

When (/^I select "(.*?)" in payment method$/) do |payment_method| 

  within :xpath, "//select[@name='40cc__type']" do
    find('option', :text => payment_method).click
  end
end

When (/^I insert "(.*?)" in name on credit card$/) do |name_credit_card| 

  page.fill_in '44cc_uname', :with => ""
  page.fill_in '44cc_uname', :with => name_credit_card
end

When (/^I insert "(.*?)" in credit card number$/) do |credit_card| 

  page.fill_in '41ccnumber', :with => ""
  page.fill_in '41ccnumber', :with => credit_card
end

When (/^I insert "(.*?)" - "(.*?)" in expiration date$/) do |month,year| 

  within :xpath, "//select[@name='42ccexp_mm']" do
    find('option', :text => month).click
  end

  within :xpath, "//select[@name='43ccexp_yy']" do
    find('option', :text => year).click
  end
end

When (/^I insert "(.*?)" in email address$/) do |email| 

  page.fill_in '24emailadr', :with => ""
  page.fill_in '24emailadr', :with => email
end

When (/^I select "(.*?)" in account type$/) do |account_type| 

  within :xpath, "//select[@name='shopr_type']" do
    find('option', :text => account_type).click
  end
end

When (/^I insert "(.*?)" in password$/) do |password| 

  page.all(:xpath, "//input[@name='31password']")[0].set(password)
end

When (/^I insert "(.*?)" in verify password$/) do |password| 

  page.all(:xpath, "//input[@name='31password']")[1].set(password)
end

When (/^I insert "(.*?)" in hint password$/) do |hint| 

  page.fill_in '32passques', :with => ""
  page.fill_in '32passques', :with => hint
end

When (/^I check newsletter checkbox$/) do 

  page.check('newsletter')
end

When (/^I click on reset button$/) do 

  page.click_button('Reset')

end


Then (/^I should see all the fields empties$/) do  

  page.find(:xpath, "//input[@name='02frstname']", :text => '')
  page.find(:xpath, "//input[@name='04lastname']", :text => '')
  page.find(:xpath, "//input[@name='20homephon_ac']", :text => '')
  page.find(:xpath, "//input[@name='20homephon_pr']", :text => '')
  page.find(:xpath, "//input[@name='20homephon_sf']", :text => '')
  page.find(:xpath, "//input[@name='13adr_city']", :text => '')
  page.find(:xpath, "//input[@name='16addr_zip']", :text => '')
  page.find(:xpath, "//input[@name='44cc_uname']", :text => '')
  page.find(:xpath, "//input[@name='24emailadr']", :text => '')

  page.all(:xpath, "//input[@name='31password']")[0].text.should eq("") 
  page.all(:xpath, "//input[@name='31password']")[1].text.should eq("")

  page.find(:xpath, "//input[@name='32passques']", :text => '')

  page.all(:xpath, "//select[@name='14adrstate']/option")[0].text.should eq("Select State")
  page.all(:xpath, "//select[@name='ship_methd']/option")[0].text.should eq("Standard Shipping")
  page.all(:xpath, "//select[@name='40cc__type']/option")[0].text.should eq("Choose Payment Method")
  page.all(:xpath, "//select[@name='42ccexp_mm']/option")[0].text.should eq("01")
  page.all(:xpath, "//select[@name='43ccexp_yy']/option")[0].text.should eq("2011")
  page.all(:xpath, "//select[@name='shopr_type']/option")[0].text.should eq("Select Account Type")
  

end

