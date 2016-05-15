Given(/^I am log in$/) do

end

When(/^I go to the sign out path$/) do
  visit('/users/sign_out')
end

Then(/^I got to the sign out path$/) do
  visit('/users/sign_out')
end
