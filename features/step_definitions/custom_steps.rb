Then(/^I should see the Categories Header$/) do
  expect(page).to have_content("Categories")
end

And /^the "(.*)" field should be empty$/ do |id|
    find("##{id}").text.should==''
end

And /^the "(.*)" field should be "(.*)"$/ do |id, content|
    find("##{id}").value.should == content
end
