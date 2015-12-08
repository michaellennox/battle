# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP

feature 'Attack Reduce HP' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Michael HP: 80')
  end
end
