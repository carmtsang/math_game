class Game
  def initialize
    @current_player = "Player 1"
  end

  def new_game
    "This is a new game" #loop for game goes here
  end

  def score
    #puts score at the end of each round
    #p1: lives/3 vs p2: lives/3
  end

  def additionQuestion
    num1 = rand(1..20)
    num2 = rand(1..20)

    answer = num1 + num2

    puts "What is #{num1} plus #{num2}?"
    player_ans = gets.chomp

    if player_ans.to_i == answer
      puts "You are correct!"
    else 
      puts "You're wrong, you lose a life."
    end
  end

end

