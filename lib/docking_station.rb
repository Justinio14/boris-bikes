require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
      @docked = []
      @capacity = capacity
  end


  def release_bike
    raise "Empty dock" if empty?
    docked.pop
  end

  def dock_bike(bike, working = true)
    raise "Full dock" if full?
<<<<<<< HEAD
    if working == false
      bike.working = false
    end

    @docked << bike
=======
    docked << bike
>>>>>>> 9c1e8cfbd696175f2c230ab6aa09babc984f3886
  end

  private

  attr_reader :docked

  def full?
    docked.count >= capacity
  end

  def empty?
    docked.empty?
  end
end
