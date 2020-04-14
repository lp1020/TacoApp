class TacosController < ApplicationController

  def indexwithcats
    @tacocat = Tacocat.find(params[:tacocat_id])
    @tacos = @tacocat.tacos
     render :json => {:tacocat => @tacocat,
                      :tacos => @tacos}
  end

  def show
    @taco = Taco.find(params[:id])
    @tacocat = Tacocat.find_by(id: @taco.tacocat_id)
    @ingredients = @taco.ingredients
    render :json => {:taco => @taco,
                     :tacocat => @tacocat,
                     :ingredients => @ingredients}
  end

  def new
    @taco = Taco.new
  end

  def create
    @taco = Taco.new(taco_params)
    @ingredients = Ingredient.all
    @tacocat = Tacocat.all
    @taco.save
    redirect_to tacos_path
    render :json => {:taco => @taco,
                     :ingredients => @ingredients,
                     :tacocat => @tacocat}
  end

def all
    @tacos = Taco.all
    render json: { data: @tacos }
end

def update
    @taco = Taco.find(params[:id])
    @tacocat = @taco.tacocat
    @ingredients = @taco.ingredients
    @taco.update
    redirect_to tacos_path
    render :json => {:taco => @taco,
                     :tacocat => @tacocat,
                     :ingredients => @ingredients}
  end
end


