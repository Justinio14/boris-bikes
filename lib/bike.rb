class Bike

  attr_accessor :working

  def initialize
    @working = true
  end

  def working?
    @working
    #@broken = true
  end

  #def report_broken
  #  @broken
  #end
end
