require 'rails_helper'

describe 'The input form path' do
  it 'displays a form on the home page' do
    visit root_path
    expect(page).to have_no_content 'Enter your'
    click_on 'New Entry'
    expect(page).to have_content 'Enter your'
  end
end
