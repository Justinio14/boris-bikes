require_relative 'bike'

class DockingStation

  attr_reader :docked

  def initialize(docked = nil)
    @docked = docked
  end

  def release_bike
    raise "Empty dock" if !@docked
    @bike = @docked
    @docked = nil
    @bike
  end

  def dock_bike(bike)
    raise "Full dock" if @docked
    @bike = bike
    @docked = bike
  end

end
