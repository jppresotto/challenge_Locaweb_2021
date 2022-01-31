class Player
  attr_reader :initial_location, :jump_distance

  def initialize(initial_location:, jump_distance:)
    @initial_location, @jump_distance = initial_location, jump_distance
  end
end
