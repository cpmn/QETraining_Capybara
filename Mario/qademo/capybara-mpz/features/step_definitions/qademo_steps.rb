# coding: utf-8

###### WHEN #############

When (/^I open the testing page$/) do 

  visit('/')
  page.driver.browser.manage.window.maximize

end

When (/^I select "(.*?)" in the secod section$/) do |tab| 

  find('ul#tab_ul li a.ui-tabs-anchor', :text => tab).click
end


######### THEN ###########


Then (/^I should see that "(.*?)" title is displayed$/) do |title|

  #page.has_selector?('h1.entry-title', :text => title)
  expect(page.find('h1.entry-title').text).to eql title
end

Then (/^I should see three subtitles in the first section$/) do |table|

  subtitles = table.raw
  subtitles.each do |subtitle|
    page.has_selector?('h5', :text => subtitle[0])
  end
end

Then (/^I should see the following options in the right menu Registration$/) do |table|
  
  page.has_selector?('h3.widget-title.panel-title', :text => "Registration")
  
  submenus = table.raw
  submenus.each do |submenu|
    #page.has_link?(submenu, :href => 'http://demoqa.com/registration/')
    page.has_link?(submenu)
  end
end

Then (/^I should see the following options in the right menu Interaction$/) do |table|
  
  page.has_selector?('h3.widget-title.panel-title', :text => "interaction")
  
  submenus = table.raw
  submenus.each do |submenu|
    #page.has_link?(submenu, :href => 'http://demoqa.com/registration/')
    page.has_link?(submenu)
  end
end

Then (/^I should see the following options in the right menu Widget$/) do |table|
  
  page.has_selector?('h3.widget-title.panel-title', :text => "Widget")
  
  submenus = table.raw
  submenus.each do |submenu|
    #page.has_link?(submenu, :href => 'http://demoqa.com/registration/')
    page.has_link?(submenu)
  end
end

Then (/^I should see the following options in the right menu Frames and Windows$/) do |table|
  
  page.has_selector?('h3.widget-title.panel-title', :text => "Frames and Windows")
  
  submenus = table.raw
  submenus.each do |submenu|
    #page.has_link?(submenu, :href => 'http://demoqa.com/registration/')
    page.has_link?(submenu)
  end
end


Then (/^I should see "(.*?)" tabs in the second section$/) do |num_tabs|
  
  page.has_css?('ul#tab_ul li', :count => num_tabs)
end

Then (/^I should see "(.*?)" in the screen$/) do |content|
  
  page.has_xpath?("//div[@class='tabcontent ui-tabs-panel ui-widget-content ui-corner-bottom' and @aria-hidden='true']/b", :text => content)
end

