class Player
  attr_reader :name, :position

  def initialize(player_name)
    @name = player_name
    @position = 0
    
  end

  def my_position(dice_number)
    @position += dice_number
    return @position
  end




end