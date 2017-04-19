class Game
attr_reader :player_array

def initialize()
  @player_array = []
end

  def add_player(player)
  
    return @player_array << player 
  end

  def select_player
    chosen_player = @player_array[0]
    @player_array.unshift(@player_array.pop)
    return chosen_player
  end

  def take_a_turn
    dice_roll = @dice.throw_dice
    current_player = select_player
    new_position = current_player.my_position(dice_roll)
    return new_position
  end

end
