class DiceGame
  playerOne, playerTwo = 0
  winner = false
  round = 0
  sets = [0, 0]

  def self.dice_roll
    rand(6)
  end

  while winner == false
    round += 1
    playerOne = dice_roll + dice_roll
    playerTwo = dice_roll + dice_roll
  
    puts playerOne
    puts playerTwo

    if playerOne > playerTwo
      sets[0] += 1
      puts "Round #{round}: One winner!"
    elsif playerTwo > playerOne
      sets[1] += 1
      puts "Round #{round}: Two Tower!"
    elsif
      playerOne == playerTwo
      puts "Round: One == Two: draw!"
    end

    if sets[0] == 3
      winner = true
      puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxx"
      puts "Champion: One winner!"
    elsif sets[1] == 3
      winner = true
      puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxx"
      puts "Champion: Two Tower!"
    end
  end
end