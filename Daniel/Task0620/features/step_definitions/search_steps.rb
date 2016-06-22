Given(/^I open the borwser and go to "([^"]*)"$/) do |page|
	visit(page)
end

When(/^I search "([^"]*)"$/) do |word|
	page.fill_in "lst-ib", :with => word
end

When(/^click in "([^"]*)" button$/) do |button|
	#page.click_on(button)
	page.find(:xpath,'//*[@id="sblsbb"]/button/span').click
end

Then(/^I should see the result "([^"]*)"$/) do |title|
	expect(page.find(:xpath,"//h3/a[text()='#{title}']").text()).to eq(title)
end