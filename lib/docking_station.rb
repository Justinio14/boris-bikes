require_relative 'bike'

class DockingStation

  attr_reader :docked

  def initialize
    @docked = []
  end

  def release_bike
    empty?(@docked)
    #raise "Empty dock" if @docked.empty?
    #@bike = @docked
    @docked.pop
    #@bike
  end

  def dock_bike(bike)
    full?(@docked.count)
    #raise "Full dock" if @docked.count > 19
    #@bike = bike
    @docked << bike
  end

  def full?(count)
    if count > 19
      raise "Full dock"
    end
  end

  def empty?(arr)
    raise "Empty dock" if arr.empty?
  end

end
