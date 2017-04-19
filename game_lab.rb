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


end
