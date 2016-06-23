Given(/^I navigate to "([^"]*)"$/) do |page|
  visit(page)
end

When(/^page is loaded$/) do
  puts "Wait to load page"
end

Then(/^following images are displayed:$/) do |images|
  table = images.rows
	table.each do |label|
		expect(page.has_xpath?("//h5[text()='#{label[0]}']//following-sibling::*/descendant::img")).to be(true)
	end
end