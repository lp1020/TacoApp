class IngcatsController < ApplicationController
  def index
    @ingcats = Ingcats.all
  end
end
