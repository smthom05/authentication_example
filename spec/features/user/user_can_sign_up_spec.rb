require 'rails_helper'

RSpec.describe 'user index page', type: :feature do
  it 'shows a link that will take the user to sign up for the site' do
    visit users_path

    click_link "Sign Up"

    expect(page).to have_content("Please Enter Your Information")
  end


end
