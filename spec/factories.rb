FactoryGirl.define do
  factory :food, class: :calorie_modifier do
    name 'banana'
    calories 100
    is_intake true
  end

  factory :exercise, class: :calorie_modifier do
    name 'running'
    calories 200
    is_intake false
  end
end
