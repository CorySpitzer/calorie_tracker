class CalorieModifier < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :calories
  validates_inclusion_of :is_intake, :in => [true, false]
end
