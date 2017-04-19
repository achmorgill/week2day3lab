require ('minitest/autorun')
require ('minitest/rg')
require_relative('../dice.rb')

class  TestDice < MiniTest::Test

  def test_random_dice_throw
    dice = Dice.new
    random = 0
    random = dice.throw_dice
    puts "DICE - random number is #{random}"
  end

end