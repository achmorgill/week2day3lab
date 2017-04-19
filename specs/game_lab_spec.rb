require ('minitest/autorun')
require ('minitest/rg')
require_relative('../game_lab.rb')
require_relative('../dice.rb')
require_relative('../player.rb')

class  TestGame < MiniTest::Test

  def setup

    @player1 = Player.new("Fred")
    @player2 = Player.new("Jane")
    @game = Game.new()
    @end_square = 100
    @dice = Dice.new()
  end


  # def test_roll_the_dice
  #   dice = Dice.new()
  #   random_value = dice.throw_dice
  # end

  def test_add_player_to_array

    @game.add_player(@player1)
    assert_equal(1,@game.player_array.size)
    @game.add_player(@player2)
    assert_equal(2,@game.player_array.size)
  end

  def test_select_player_to_throw
      @game.add_player(@player1)
      @game.add_player(@player2)
      current_player = @game.select_player

      # puts current_player.inspect
      assert_equal(@player1, current_player)
  end

  def 

  end

end

