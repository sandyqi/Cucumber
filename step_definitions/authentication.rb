def create_user
	@email = "api@buildingintelligence.com"
	@password = "Testtesttest1"
	@user = FactoryGirl.create(:user, {:email => @email, :password => @password,
		:contact_attributes => {:first_name => 'fname',:last_name=>'lname'}})
	#@user.confirm!
end

def setup_campus_n_admin
	create_user
	@campus = FactoryGirl.create(:campus, {:name => "Test Campus"})
	@user.add_role :admin, @campus
end

def fill_in_buiding_infor


end


def sign_in
  visit '/auth/sign_in'
  fill_in "user[email]", :with => @email
  fill_in "user[password]", :with => @password
  click_button "Sign in"
end

Given /^I exist as a user$/ do
  create_user
  @user.persisted?.should == true
end

When /^I sign in with valid credentials$/ do
  sign_in
    puts page.body
end

Then /^I see a successful sign in message$/ do
  page.find_by_id 'new_user'
end



 # find('a[href="/auth/sign_out"]').click
 # puts page.body
 # page.find_button "Sign in"

Given(/^User signs in successfully$/) do
  setup_campus_n_admin
end

Given(/^User is with campus admission$/) do
  sign_in
end

When(/^User visits campus dashboard$/) do
#   visit '/campuses/#{@campus.id}'

end

Then(/^User should see dashborad\-information$/) do
#  page.find_by_id 'sv3-header'

end

When(/^User clicks add building$/) do
  visit "/campuses/#{@campus.id}/buildings/new"

end

Then(/^User should see a blank form$/) do
  page.find_by_id 'building_name'
  page.find_by_id 'building_cuilding_code'
  page.find_by_id 'building_program'
end

When(/^User fills in name, building code, vendor program and loading docks$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^User clicks Add$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^User goes back to dashboard$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the content should include the new\-created building name$/) do
  pending # express the regexp above with the code you wish you had
end
