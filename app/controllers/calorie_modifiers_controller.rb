class CalorieModifiersController < ApplicationController
  def index
    @calorie_modifiers = CalorieModifier.all
  end

  def new
    @calorie_modifier = CalorieModifier.new
  end

  def create
    @calorie_modifier = CalorieModifier.new(calorie_modifier_params)
    if @calorie_modifier.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def calorie_modifier_params
    params.require(:calorie_modifier).permit(:is_intake, :name, :calories)
  end
end
