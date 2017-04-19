class Dice
  attr_reader :dice_number

  def throw_dice
  #return a random generated number
    return rand(6) + 1
  end

end