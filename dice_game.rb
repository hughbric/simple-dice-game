class DiceGame
  playerOne, playerTwo = 0
  winner = false
  round = 0
  sets = [0, 0]

  def self.roll_dice
    rand(6) + rand(6)
  end

  def self.winner(score_one, score_two)
    if score_one > score_two
      -1
    elsif score_one == score_two
      0
    elsif score_one < score_two
      1
    end
  end

  puts "  Player One       Rounds        Player Two"
  puts "-----------------------------------------------"

  while winner == false
    round += 1
    playerOne = roll_dice
    playerTwo = roll_dice

    case winner(playerOne, playerTwo)
    when -1
      puts "    Winner!  : (#{playerOne}) Round #{round} (#{playerTwo}) :         "
      sets[0] += 1
    when 0
      puts "    Draw!    : (#{playerOne}) Round #{round} (#{playerTwo}) :  Draw!  "
      
    when 1
      puts "             : (#{playerOne}) Round #{round} (#{playerTwo}) :  Winner!"
      sets[1] += 1
    end

    if sets[0] == 3
      winner = true
      puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
      puts "        Champion: One winner!"
    elsif sets[1] == 3
      winner = true
      puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
      puts "        Champion: Two Tower!"
    end
  end
end
