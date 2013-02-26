
class Board

attr_reader :spaces

  def initialize
    @spaces = {'1'=>'1', '2'=>'2', '3'=>'3', '4'=>'4', '5'=>'5', '6'=>'6', '7'=>'7', '8'=>'8', '9'=>'9'}
  end

  def display
    "#{@spaces['1']} | #{@spaces['2']} | #{@spaces['3']}\n----------\n#{@spaces['4']} | #{@spaces['5']} | #{@spaces['6']}\n----------\n#{@spaces['7']} | #{@spaces['8']} | #{@spaces['9']}"
  end


  def space_marked?(player_choice)
    @spaces[player_choice] == 'X' || @spaces[player_choice] == 'O'
  end

  def change_mark(player_choice, player)
    #replace the specified(input) spot's number with the player's mark
    if player == 'Player 1'
      mark = 'X'
    else
      mark = 'O'
    end
    @spaces[player_choice] = mark
  end

  def over?
    @spaces['1'] == @spaces['2'] && @spaces['2'] == @spaces['3'] ||\
    @spaces['4'] == @spaces['5'] && @spaces['5'] == @spaces['6'] ||\
    @spaces['7'] == @spaces['8'] && @spaces['8'] == @spaces['9'] ||\
    @spaces['1'] == @spaces['4'] && @spaces['4'] == @spaces['7'] ||\
    @spaces['2'] == @spaces['5'] && @spaces['5'] == @spaces['8'] ||\
    @spaces['3'] == @spaces['6'] && @spaces['6'] == @spaces['9'] ||\
    @spaces['1'] == @spaces['5'] && @spaces['5'] == @spaces['9'] ||\
    @spaces['3'] == @spaces['5'] && @spaces['5'] == @spaces['7']
  end



end
