feature 'Attack' do
  # As Player 1,
  # So I can win a game of Battle,
  # I want to attack Player 2, and I want to get a confirmation
  scenario 'attacking player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Ed attacks Michael"
  end


  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP
  scenario 'attacking reduces HP' do
    sign_in_and_play
    2.times {click_button('Attack')}
    expect(page).to have_content('Michael HP: 80')
  end
end
