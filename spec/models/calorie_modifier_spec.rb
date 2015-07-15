require 'rails_helper'

describe CalorieModifier do
  it { should validate_presence_of :name}
  it { should validate_presence_of :calories}
end
