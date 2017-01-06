require_relative 'bike'

class DockingStation

  attr_reader :docked

  def initialize
      @docked = []
  end

  def release_bike
    raise "Empty dock" if empty?
    #@bike = @docked
    @docked.pop
    #@bike
  end

  def dock_bike(bike)
    raise "Full dock" if full?
    #@bike = bike
    @docked << bike
  end

  private
  def full?
    @docked.count > 19
  end

  def empty?
    @docked.empty?
  end

end
