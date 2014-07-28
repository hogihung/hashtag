require 'spec_helper'

feature 'Search twitter for a term' do 
  scenario 'searching by a hast tag' do 
    visit root_path
    fill_in 'Search', with: 'Rails'
    click_button 'Search'
    expect(page).to have_css 'li.tweet', count: 15
  end
end