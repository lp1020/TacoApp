class IngredientsController < ApplicationController
   def index
    @taco = Taco.find(params[:taco_id])
    @ingcat = Ingcat.find_by(id: @taco.ingcat_id)
    @ingredients = @taco.ingredients
    render :json => {:taco => @taco,
              :ingcat => @ingcat,
             :ingredients => @ingredients}
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

   def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    respond_with Ingredient, json: ingredient
  end
end

private
  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
