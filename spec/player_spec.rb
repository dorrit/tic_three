require 'rspec'
require 'player'

describe Player do
  it 'initializes a new player' do
    player = Player.new('Player 1')
    player.should be_an_instance_of Player
  end

end