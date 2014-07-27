require 'spec_helper'

feature 'View the homepage' do 
  scenario 'learn about the application.' do 
    visit root_path
    expect(page).to have_css 'h1', text: 'Hashtag'
    expect(page).to have_css '[data-role="description"]'
  end
end