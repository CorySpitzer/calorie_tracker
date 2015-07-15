require "rails_helper"

describe "the path to add a calorie modifier entry" do
  it "adds a new calorie modifier entry" do
    visit new_calorie_modifier_path
    choose 'Yes'
    fill_in 'Name', :with => "apple"
    fill_in 'Calories', :with => 50
    click_on 'Submit'
    expect(page).to have_content 'apple: 50 calories'
  end
end
