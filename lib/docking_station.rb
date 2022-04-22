class DockingStation

  DEFAULT_CAPACITY = 20

  
  attr_reader :capacity
  attr_reader :bikes
  
  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    #bikes.pop if bikes[-1].working? == true
    if bikes[-1].working?
      bikes.pop
    else
      bikes.delete_at(-2)
    end
  end

  def dock(bike, status = "working")
    fail 'Dock is full' if full?
    bike.broken = true if status == "broken"
    bikes << bike
  end

  private
  
  
  
  def full?
    bikes.count >= DEFAULT_CAPACITY ? true : false
  end

  def empty?
    bikes.empty?
  end

  
end

class Bike

  def initialize
    @broken = false
  end

  attr_accessor :broken

  def working?
    !@broken
  end
end