require './lib/player'
require './lib/board'

board = Board.new
players = [Player.new('Player 1'), Player.new('Player 2')]
puts "Welcome to a game of Tic Tac Toe!"

until board.winner?
 
  players.each do |player|
    puts "\n\n#{board.display}\n\n\n"
    puts "#{player.name} it's your turn. Choose a spot by typing in the number."
    player_choice = gets.chomp

    if board.space_marked?(player_choice) == false
      board.change_mark(player_choice, player.name)
    else
      puts "That space is marked. Choose another."
      player_choice = gets.chomp
      board.change_mark(player_choice, player.name)
    end
  end

 # "#{player.name}, you win!"
 
end
