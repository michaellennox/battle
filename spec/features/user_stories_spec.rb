require 'capybara'
require_relative '../../app.rb'

describe 'user stories' do
  before do
    include Capybara::DSL
    Capybara.default_driver = :selenium
    visit 'http://localhost:4567/'
  end

  it 'takes users name' do
    fill_in('name', with: 'tony')
    find_button('FIGHT').click
    expect(page).to have_content('tony')
  end
end
