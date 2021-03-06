require 'rails_helper'

def log_in(user)
  visit root_url
  click_link 'Login'
  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  click_button 'Log in'
end

def log_out(user)
  visit root_url
  click_link 'Logout'
  expect(page).to have_content("Login")
end

describe "authorizations" do

  it "allows the user to sign up" do
    visit root_url
    expect(page).to have_content "Login"
    expect(page).to_not have_content "Logout"
    click_link "Sign Up"
    fill_in "Name", with: "Example User"
    fill_in "Email", with: "example_user@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
    expect(page).to_not have_content("errors")
    expect(page).to have_content("Logout")
  end

  it "allows the user to login" do
    user = FactoryGirl.create(:user)
    visit root_url
    expect(page).to have_content "Login"
    expect(page).to_not have_content "Logout"
    log_in user
    expect(page).to_not have_content("errors")
    expect(page).to have_content("Logout")
  end

  it "allows a user to log out" do
    user = FactoryGirl.create(:user)
    visit root_url
    log_in user
    log_out user
  end
end
