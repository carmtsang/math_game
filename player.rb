class Player
  @@number_of_players = 0
 
  def initialize
    @lives = 3
    @@number_of_players += 1
    ask_for_name
    @name = gets.chomp
  end

  def ask_for_name
    puts "Player #{@@number_of_players}, what is your name?"
  end

  def name
    @name
  end

  def lives
    @lives
  end

  def score
    "#{name}: #{lives}/3"
  end

  def lose_game
    @lives -=1
  end

end

