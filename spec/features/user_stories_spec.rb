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

    scenario 'attack reduces HP' do
      sign_in_and_play
      click_button('Attack')
      click_button('Back to fight')
      expect(page).to have_content('50/60 HP')
    end
  end

  feature 'attacks' do
    scenario 'strikes other player' do
      sign_in_and_play
      click_button('Attack')
      expect(page).to have_content('Tony attacked John')
    end
  end

  scenario 'strikes other player' do
    sign_in_and_play
    click_button('Attack')
    click_button('Back to fight')
    click_button('Attack')
    expect(page).to have_content('John attacked Tony')
  end

  feature 'switch players' do
    scenario 'changes player turns' do
      sign_in_and_play
      click_button('Attack')
      click_button('Back to fight')
      expect(page).to have_content('John\'s turn')
    end
  end

end
