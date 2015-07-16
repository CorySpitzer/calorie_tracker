require 'rails_helper'

describe 'displaying the calorie modifiers' do
  it 'loads some after others', js: true do
    5.times do |n|
      CalorieModifier.create! name: 'apple', is_intake: true, calories: 50
    end
    running = CalorieModifier.create! name: 'running', is_intake: false, calories: 120
    visit root_path
    save_and_open_screenshot
    expect(page).to have_no_content running.name
# save_and_open_page
    page.evaluate_script ('window.scrollTo(0, document.height)')
    expect(page).to have_content running.name
  end
end
