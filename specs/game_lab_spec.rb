require ('minitest/autorun')
require ('minitest/rg')
require_relative('../game_lab.rb')
require_relative('../dice.rb')
require_relative('../player.rb')

class  TestGame < MiniTest::Test

  def setup

    @player1 = Player.new("Fred")
    @player2 = Player.new("Jane")
    @player3 = Player.new("Dave")
    @game = Game.new()
    @game.add_player(@player1)
    @game.add_player(@player2)
    @end_square = 100
    @dice = Dice.new()

  end


  def test_roll_the_dice
    random_value = @dice.throw_dice
  end

  def test_add_player_to_array
    @game.add_player(@player3)
    assert_equal(3,@game.player_array.size)
  end

  def test_select_player_to_throw
      current_player = @game.select_player
      assert_equal(@player1, current_player)
  end

  def test_move_player
    dice_roll = @dice.throw_dice
    puts "Fred's first: #{dice_roll}"
    current_player = @game.select_player
    new_position = current_player.my_position(dice_roll)
    assert_equal(dice_roll,new_position)
    dice_roll = @dice.throw_dice
    puts "Janes's first: #{dice_roll}"
    current_player = @game.select_player
    new_position = current_player.my_position(dice_roll)
    dice_roll = @dice.throw_dice
    puts "Fred's second: #{dice_roll}"
    current_player = @game.select_player
    new_position = current_player.my_position(dice_roll)
    puts "Fred's new position: #{new_position}"
  end

  def test_take_a_turn
    new_position = @game.take_a_turn
  
    assert_equal(new_position ,new_position)

  end

end

