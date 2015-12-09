feature 'naming players' do

  scenario 'Enter players names & display them in Battle' do
    sign_in_and_play
    expect(page).to have_content('Player 1 vs. Player 2')
  end

end
