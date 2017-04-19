require ('minitest/autorun')
require ('minitest/rg')
# require_relative('../game_lab.rb')
# require_relative('../dice.rb')
require_relative('../player.rb')

class  TestPlayer < MiniTest::Test

  def test_can_set_up_player
    player_1 = Player.new("Alf")
    assert_equal("Alf",player_1.name)
  end


  def test_player_can_read_dice
    player_1 = Player.new("Alf")
    assert_equal(3,player_1.my_position(3))
  end


end