Given(/^I open the borwser and go to "([^"]*)"$/) do |page|
	visit(page)
end

When(/^I search "([^"]*)"$/) do |word|
	page.fill_in "lst-ib", :with => word
end

When(/^click in "([^"]*)" button$/) do |button|
	#page.click_on("btnK")
	#page.click_button button
	page.find(:xpath,"//form//following-sibling::button[@value='Search']").click
end

Then(/^I should see the result "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end