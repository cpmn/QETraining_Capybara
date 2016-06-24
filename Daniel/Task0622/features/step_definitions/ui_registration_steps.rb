Given(/^I navigate to "([^"]*)"$/) do |page|
  visit(page)
end

When(/^page is loaded$/) do
  puts "Wait to load page"
end

Then(/^following images are displayed:$/) do |images|
  table = images.rows
	table.each do |image|
		expect(page.has_xpath?("//h5[text()='#{image[0]}']//following-sibling::*/descendant::img")).to be(true)
	end
end
Then(/^following labels are displayed:$/) do |labels|
  	table = labels.rows
	table.each do |label|
		expect(page.assert_text("#{label[0]}")).to be(true)
	end
end

Then(/^top menu is displayed with following buttons:$/) do |menu|
  table = menu.rows
	table.each do |button|
		expect(page.has_link?("#{button[0]}")).to be(true)
	end
end

Then(/^right menu is displayed with following Sections:$/) do |section|
	table = section.rows
	table.each do |item|
		expect(page.assert_text("#{item[0]}")).to be(true)
	end
end

When(/^I click in each tab$/) do
	puts "Clicking.."
end

Then(/^Content title changes:$/) do |tabs|
	table = tabs.rows_hash
	table.each_pair do |tab,title|
		if page.has_link?("#{tab}")
			page.find_link("#{tab}").click
			page.find(:xpath,"//*[@id='post-9']/div/div[4]//following-sibling::b[text()='#{title}']")
		end
	end
end