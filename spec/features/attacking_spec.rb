feature 'Attacking Player' do

  scenario 'Receives confirmation upon attacking Player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Player 1 attacked Player 2')
  end

  scenario 'Receives confirmation upon attacking Player 1' do
    sign_in_and_play
    attack_and_return
    click_button('Attack')
    expect(page).to have_content('Player 2 attacked Player 1')
  end

end
