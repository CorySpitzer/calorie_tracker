require "rails_helper"

describe "the path to add a calorie modifier entry" do
  it "adds a new calorie modifier entry(food)" do
    visit new_calorie_modifier_path
    choose 'Yes'
    fill_in 'Name', :with => "apple"
    fill_in 'Calories', :with => 50
    click_on 'Submit'
    expect(page).to have_content 'apple: 50 calories'
  end

  it "adds a new calorie modifier entry(exercise)" do
    visit new_calorie_modifier_path
    choose 'No'
    fill_in 'Name', :with => "running"
    fill_in 'Calories', :with => 100
    click_on 'Submit'
    expect(page).to have_content 'running: -100 calories'
  end
end
