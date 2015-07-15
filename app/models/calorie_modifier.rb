class CalorieModifier < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :calories
end
