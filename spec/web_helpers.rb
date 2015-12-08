def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Ed'
  fill_in :player_2_name, with: 'Michael'
  click_button 'Submit'
end
