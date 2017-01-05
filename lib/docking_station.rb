require_relative 'bike'

class DockingStation

  attr_reader :docked

  def initialize
    @docked = []
  end

  def release_bike
    raise "Empty dock" if @docked.empty?
    #@bike = @docked
    @docked.pop
    #@bike
  end

  def dock_bike(bike)
    raise "Full dock" if @docked.count > 19
    #@bike = bike
    @docked << bike

  end

end
