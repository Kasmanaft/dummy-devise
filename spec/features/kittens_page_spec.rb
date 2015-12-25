require 'rails_helper'

feature 'Kittens page' do
  scenario 'it requires authorization' do
    visit '/'
    expect(page).to have_text 'You need to sign in or sign up before continuing'
  end
end
