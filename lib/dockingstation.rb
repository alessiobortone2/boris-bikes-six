class DockingStation

DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
    @broken = []
  end

  def release_bike
    raise "no bikes available" if empty?
    @bikes
  end

attr_reader :bike, :capacity, :broken

  def dock(bike, broken = false)
    raise "the dock is full" if full?
    broken ? @broken << bike : @bikes << bike
  end


private
  def broken?

  end

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end

class Bike

  def working?
    true
  end

  def report_broken
    @broken = true
  end

  def broken?
    @broken
  end

end


#https://github.com/makersacademy/course/tree/master/boris_bikes
