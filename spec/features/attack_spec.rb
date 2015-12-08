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

  # As Player 1,
  # So I can lose a game of Battle,
  # I want Player 2 to attack me, and I want to get a confirmation
  scenario 'player 2 attacking' do
    sign_in_and_play
    2.times {click_button('Attack')}
    expect(page).to have_content('Michael attacks Ed')
  end

  # As Player 1,
  # So I can start to lose a game of Battle,
  # I want Player 2's attack to reduce my HP
  scenario 'player 2 attacking reduces player 1 hp' do
    sign_in_and_play
    3.times {click_button('Attack')}
    expect(page).to have_content('Ed HP: 80')
  end

end
