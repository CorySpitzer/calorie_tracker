require 'rails_helper'

describe 'displaying the calorie modifiers' do
  it 'loads some after others', js: true do
    10.times do |n|
      FactoryGirl.create :food
    end
    running = FactoryGirl.create :exercise
    visit root_path
    expect(page).to have_no_content running.name
save_and_open_page
    page.evaluate_script 'window.scrollTo(0, document.height)'
    expect(page).to have_content running.name
  end
end
