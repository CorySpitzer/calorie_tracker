class CalorieModifiersController < ApplicationController
  def index
    @calorie_modifiers = CalorieModifier.order('calories').page(params[:page]).per_page(40)
    respond_to do |format|
      format.html
      format.js
    end
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

  def destroy
    @calorie_modifier = CalorieModifier.find(params[:id])
    @calorie_modifier.destroy
    redirect_to root_path
  end

  private
  def calorie_modifier_params
    params.require(:calorie_modifier).permit(:is_intake, :name, :calories)
  end
end
