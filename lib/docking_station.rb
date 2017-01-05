require_relative 'bike'

class DockingStation

  attr_reader :bike

  def initialize
    @bike = true
  end

  def release_bike
    raise "Empty dock" if !@bike
    bike = Bike.new
    @bike = nil 
    bike
  end

  def dock_bike(bike)
    @bike = bike
  end

end
