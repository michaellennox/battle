

  # As Player 1,
  # So I can see how close I am to winning
  # I want to see Player 2's Hit Points

feature 'Hit points' do
  scenario 'viewing hit points' do
    sign_in_and_play
    expect(page).to have_content 'Michael HP: 100'
  end
end
