class TacocatsController < ApplicationController
   def index
    @tacocats = Tacocast.all
  end
end
