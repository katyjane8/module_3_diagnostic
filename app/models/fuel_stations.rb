class FuelStations
  attr_reader :station_name,
              :street_address,
              :fuel_type_code,
              :distance,
              :access_times

  def initialize(attributes)
    byebug
    @station_name = attributes[:station_name]
    @address = attributes[:address]
    @fuel_type = attributes[:fuel_type]
    @distance = attributes[:distance]
    @access_times = attributes[:access_times]
  end
end
