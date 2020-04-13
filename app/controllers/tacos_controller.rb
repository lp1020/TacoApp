class TacosController < ApplicationController

  def index

    # @taco = @tacocat.tacos
    #  render :json => {:tacos => @tacos,
    #           :ingredients => @tacocat}
    #   @ingredients = @taco.ingredients
  end
  def show
    @taco = Taco.find(params[:id])
    @tacocat = Tacocat.find_by(id: @taco.tacocat_id)
    @ingredients = @taco.ingredients
    render :json => {:taco => @taco,
              :tacocat => @tacocat,
             :ingredients => @ingredients}
  end
  def all
@tacos = Taco.all
render json: { data: @tacos }


  end

end
