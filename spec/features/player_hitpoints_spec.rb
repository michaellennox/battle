feature 'Displaying players hitpoints' do

  scenario 'Page shows player 2\'s hitpoints' do
    sign_in_and_play
    expect(page).to have_content('Player 2 HP: 100')
  end

end
