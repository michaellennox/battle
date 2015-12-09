feature 'Changing turns' do

  scenario 'Indicates that it\'s Player\' turn on screen' do
    sign_in_and_play
    expect(page).to have_content("It's Player 1's turn!")
  end

  scenario 'After Player 1\'s turn, indicates that it\'s Player 2\'s turn!' do
    sign_in_and_play
    attack_and_return
    expect(page).to have_content("It's Player 2's turn!")
  end
end
