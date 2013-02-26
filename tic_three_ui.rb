require './lib/player'
require './lib/board'

board = Board.new
players = [Player.new('Player 1'), Player.new('Player 2')]
puts "Welcome to a game of Tic Tac Toe!"

until board.over?
  players.each do |player|
    puts "\n\n#{board.display}\n\n\n"
    puts "#{player.name} it's your turn. Choose a spot by typing in the number."
    player_choice = gets.chomp
    until @spaces[player_choice] != 'X' || @spaces[player_choice] != 'O'
      puts "That space is marked. Choose another."
      player_choice = gets.chomp
    end
    board.change_mark(player_choice, player.name) 
  end

 # "#{player.name}, you win!"
 
end


# def space_marked?(player_choice)
#   until @spaces[player_choice] != 'X' || @spaces[player_choice] != 'O'
#     puts "That space is marked. Choose another."
#     player_choice = gets.chomp
#   end
# end