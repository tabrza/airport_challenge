# require_relative 'weather'
class Airport

  attr_reader :capacity, :terminal
  DEFAULT_CAPACITY = 2

  def initialize(capacity = DEFAULT_CAPACITY)
    @terminal = []
    @capacity = capacity
  end

  def land(plane)
    raise "Airport is full" if full?
    weather ? "Got a storm front coming, cannot land here" : terminal << plane
  end

  def take_off(plane)
    weather ? "The skies are dark, best to stay on the ground" : terminal.delete(plane)
  end

  def weather
    rand(1..10) > 5 ? true : false
  end

  private

  def full?
    terminal.length >= DEFAULT_CAPACITY
  end



end
