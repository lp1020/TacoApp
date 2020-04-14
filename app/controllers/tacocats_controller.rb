class TacocatsController < ApplicationController
   def index
    @tacocats = Tacocats.all
  end
end
