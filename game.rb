require './player.rb'

class Game
  def initialize
    @players = [Player.new, Player.new]
  end

  def update(p1_score, p2_score)
    puts "Score - #{p1_score} vs #{p2_score}" 
    puts "---Current Round Over ---"
  end

  def additionQuestion(current_player)
    num1 = rand(1..20)
    num2 = rand(1..20)
    answer = num1 + num2

    puts "#{current_player.name}, what is #{num1} plus #{num2}?"
    player_ans = gets.chomp

    if player_ans.to_i == answer
      puts "#{current_player.name}, you are correct!"
    elsif player_ans.to_i != answer
      puts "#{current_player.name}, you're wrong, you lose a life."
      current_player.lose_game
    end
  end

  def play
    current_player = @players[0]
    other_player = @players[1]

    loop do
      additionQuestion(current_player)
      update(@players[0].score, @players[1].score)
  
      current_player = swap_player(current_player, other_player)
      other_player = other_player(current_player)
      
      if other_player.lives == 0
        game_over
        break
      end
    end
    
  end
 
end

def swap_player(current, other)
  current_player = other
  other_player = current
  current_player
end

def other_player(current)
  if current == @players[0]
    other = @players[1]
 else
    other = @players[0]
 end
end

def game_over
  winner = @players.find { |e| e.lives > 0 }
  puts "#{winner.name} wins with a score of #{winner.lives}/3 "
  puts "---Game Over---"
end