class IngredientsController < ApplicationController
   def index
    @ingredients = Ingredient.all
    render json: { ingredients: @ingredients }
  end

   def show
    @ingredient = Ingredient.find(params[:id])
    render json: { ingredient: @ingredient }
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.save
    render json: { ingredient: @ingredient }
  end

  def all
    @ingredients = Ingredient.all
    render json: { data: @ingredients }
  end

  def destroy
    @ingredient = Ingredient.destroy(params[:id])
    render json: { ingredient: @ingredient }
  end
end

private
  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
