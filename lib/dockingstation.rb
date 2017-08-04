class DockingStation

DEFAULT_CAPACITY = 20

attr_accessor :bike, :capacity, :broken

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
    @broken = []
  end

  def release_bike
    raise "no bikes available" if empty?
    @bikes
  end

  def dock(bike, broken = false)
    raise "the dock is full" if full?
    if broken
       @broken << bike
       p @broken
     else
       @bikes << bike
     end
  end


private

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

  def broken?
    true
  end



end


#https://github.com/makersacademy/course/tree/master/boris_bikes
