class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes
  
  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Dock is full' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY ? true : false
  end

  def empty?
    @bikes.empty?
  end

  
end

class Bike
  def working?
    
  end
end