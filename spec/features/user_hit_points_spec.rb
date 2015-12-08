

  # As Player 1,
  # So I can see how close I am to winning
  # I want to see Player 2's Hit Points

  # As Player 1,
  # So I can see how close I am to losing,
  # I want to see my own hit points

feature 'Hit points' do
  scenario 'viewing player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Michael HP: 100'
  end
  scenario 'viewing player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Ed HP: 100'
  end

  # As a Player,
  # So I can Lose a game of Battle,
  # I want to see a 'Lose' message if I reach 0HP first
  scenario 'hit points reach 0' do
    sign_in_and_play
    9.times{click_button('Attack')}
    expect(page).to have_content 'Victory Ed!'
  end


end
