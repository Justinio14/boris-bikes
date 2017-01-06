require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :docked, :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
      @docked = []
      @capacity = capacity
  end


  def release_bike
    raise "Empty dock" if empty?
    #@bike = @docked
    @docked.pop
    #@bike
  end

  def dock_bike(bike, working = true)
    raise "Full dock" if full?
    if working == false
      bike.working = false
    end

    @docked << bike
  end

  private
  def full?
    @docked.count >= @capacity
  end

  def empty?
    @docked.empty?
  end

end
