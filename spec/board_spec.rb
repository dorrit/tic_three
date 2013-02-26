require 'rspec'
require 'board'

describe Board do
  it 'displays a new board that is 9 spaces (3x3)' do
    board = Board.new
    board.display.should eq "1 | 2 | 3\n----------\n4 | 5 | 6\n----------\n7 | 8 | 9"
  end

  it 'places an X in spot #1' do
    board = Board.new
    board.change_mark('1', 'Player 1')
    board.display.should eq "X | 2 | 3\n----------\n4 | 5 | 6\n----------\n7 | 8 | 9"
  end

  it 'checks to see if that spot is already taken' do
    board = Board.new
    board.change_mark('1', 'Player 2')
    board.space_marked?('1').should be true
  end

  context '#over?' do
    it 'is false before the game over' do
      board = Board.new
      board.over?.should be_false
    end

    it 'ends the game when there is a winner' do
      board = Board.new
      board.change_mark('1', 'Player 1')
      board.change_mark('2', 'Player 1')
      board.change_mark('3', 'Player 1')
      board.over?.should be true
    end
  end
end
