Given(/^I click on Got it button$/) do
  puts("Clicked Got it button")
  find_element(id:"android:id/button1").click
end

And(/^I see "([^"]*)" in From header$/) do |value|
  actual_value=find_element(id:"header_text_unit_from").text
  if(actual_value != value)
    fail("Expected value is #{value} but was #{actual_value}")
  end
end

And(/^I see "([^"]*)" in To header$/) do |value|
  actual_value=find_element(id:"header_text_unit_to").text
  if(actual_value != value)
    fail("Expected value is #{value} but was #{actual_value}")
  end
end

When(/^I click on Swap button$/) do
  find_element(id:"fab").click
end

Given(/^I land on help popup$/) do
  text("Help")
end

Then(/^I land on Area screen$/) do
  text("Area")
end

And(/^I click on Clear button$/) do
  find_element(id:"menu_clear").click
end

When(/^I enter "([^"]*)" to From field$/) do |value|
  find_element(id:"header_value_from").send_keys(value)
end

Then(/^I get "([^"]*)" in To field$/) do |value|
  actual_value=find_element(id:"header_value_to").text
  if(actual_value!=value)
    fail("Expected value is #{value}, but actual value was #{actual_value}!")
  end
end
