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

  def dock_bike(bike)
    raise "Full dock" if full?
    docked << bike
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
