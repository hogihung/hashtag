require 'spec_helper'

feature 'Search twitter for a term' do 
  scenario 'searching by a hast tag' do 
    visit root_path
    fill_in 'Search', with: 'TechTalk'
    click_button 'Search'
    expect(page).to have_css 'li.tweet', count: 100

    all('li.tweet').each do |tweet|
      expect(tweet.text).to match /#TechTalk/i 
    end
  end
end