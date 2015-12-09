require 'capybara'
require_relative '../../app.rb'

include Capybara::DSL

describe 'user stories' do

  Capybara.default_driver = :selenium

  feature 'enter names' do
    scenario 'takes users name and capitalizes' do
      sign_in_and_play
      expect(page).to have_content('Tony')
    end

  end

  feature 'hit points' do
    scenario 'shows players health' do
      sign_in_and_play
      expect(page).to have_content('60/60 HP')
    end

  end

  feature 'attacks' do
    scenario 'strikes other player' do
      sign_in_and_play
      click_button('Attack')
      expect(page).to have_content('Tony attacked John')
    end
  end

end
