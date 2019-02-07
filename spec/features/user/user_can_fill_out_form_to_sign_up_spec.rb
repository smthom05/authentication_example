require 'rails_helper'

RSpec.describe 'user index page', type: :feature do
  it 'shows a form the user can fill out to sign up' do
    visit new_user_path

    expect(page).to have_button("Submit")
  end

  it 'lets users fill out the form and sign up' do
    visit new_user_path

    fill_in 'user[name]', with: "Scott"
    fill_in 'user[email]', with: "nonsense@aol.com"
    fill_in 'user[password]', with: 'password'

    click_on "Submit"

  end
end
