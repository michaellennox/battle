require 'capybara'
require_relative '../../app.rb'

describe 'user stories' do
  before do
    include Capybara::DSL
    Capybara.default_driver = :selenium
    visit 'http://localhost:9393/'
  end

  it 'takes users name' do
    fill_in('name', with: 'tony')
    fill_in('name2', with: 'john')
    find_button('FIGHT').click
    expect(page).to have_content('tony VS john')
  end
end
