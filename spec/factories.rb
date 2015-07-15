FactoryGirl.define do
  factory :food do
    name 'banana'
    calories 100
    is_intake true
  end

  factory :exercise do
    name 'running'
    calories 200
    is_intake false
  end
end
