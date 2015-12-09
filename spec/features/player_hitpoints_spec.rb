feature 'Displaying players hitpoints' do

  scenario 'Page shows Player 2\'s hitpoints' do
    sign_in_and_play
    expect(page).to have_content('Player 2 HP: 100')
  end

  scenario 'Reduce Player 2\'s hitpoint after successful' do
    sign_in_and_play
    attack_and_return
    expect(page).to have_content('Player 2 HP: 86')
  end

  scenario 'Page shows Player 1\'s hitpoints' do
    sign_in_and_play
    expect(page).to have_content('Player 1 HP: 100')
  end

  scenario 'Reduce Player 1\'s hitpoints when attacked by Player 2' do
    sign_in_and_play
    2.times { attack_and_return }
    expect(page).to have_content('Player 1 HP: 86')
  end

  scenario 'When a players hitpoint reach 0, "Lose" screen appears' do
    sign_in_and_play
    14.times { attack_and_return }
    click_button('Attack')
    expect(page).to have_content("PLAYER 2 HAS FAINTED")
  end

end
