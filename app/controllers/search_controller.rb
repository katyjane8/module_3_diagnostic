class SearchController < ApplicationController
  def index
    @fuels = Fuel.find_all(params[:zipcode])
  end
end
