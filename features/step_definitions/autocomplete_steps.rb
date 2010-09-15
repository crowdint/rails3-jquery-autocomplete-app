Then /^the "([^"]*)" field should contain the id for "([^"]*)"$/ do |field, name|
  brand = Brand.find_by_name(name)
  Then %{the "#{field}" field should contain "#{brand.id}"}
end
