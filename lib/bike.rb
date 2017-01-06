class Bike

  attr_accessor :working

  def initialize(work=true)
    @working = work
  end

  def working?
    @working
    #@broken = true
  end

  #def report_broken
  #  @broken
  #end
end
