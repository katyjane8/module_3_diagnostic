class SearchController < ApplicationController
  def index
    # @fuels = Faraday.get("http://developer.nrel.gov/api/alt-fuel-stations/v1.json?fuel_type=E85,ELEC&zipcode=90210&limit=1&api_key=#{ENV["nrel_key"]}&format=JSON")
    # zipcode = params[:zipcode]
    # @conn = Faraday.new(url: "http://developer.nrel.gov") do |faraday|
    #   faraday.headers["X-API-KEY"] = ENV["nrel_key"]
    #   faraday.adapter Faraday.default_adapter
    # end
    #
    response = Faraday.get("http://developer.nrel.gov/api/alt-fuel-stations/v1.json?fuel_type=E85,ELEC&zipcode=90210&limit=1&api_key=#{ENV["nrel_key"]}&format=JSON")
    #
    results = JSON.parse(response.body, symbolize_names: true)[:results]
    # #
    @fuels  = results.map do |result|
       FuelStations.new(result)
    end
  end
end
