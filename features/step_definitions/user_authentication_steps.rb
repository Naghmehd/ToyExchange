Given(/^I have an existing account$/) do

end

Given(/^I am a new user$/) do

end

When(/^I go to the sign in path$/) do
  visit('/users/sign_in')
end

Then(/^I should see "([^"]*)"$/) do |text|
  assert page.has_content?(text)
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, content|
  fill_in(field, with: content)
end

When(/^I fill in "([^"]*)" within "([^"]*)"$/) do |field, value|
  fill_in(field, with: value)
end

When(/^I fill in "([^"]*)" with "([^"]*)" within "([^"]*)"$/) do |field, content, parent|
  within(parent){fill_in(field, with: content)}
end

When(/^I click "([^"]*)"$/) do |text|
  click_button(text)
end

When(/^I press "([^"]*)"$/) do |text|
  click_link(text)
end

When(/^I go to the root path$/) do
  visit('/users/sign_in')
end
