require 'game'

describe Game do 

	let(:game) { Game.new }
  let(:player) { double :player, choice: :rock}
  let(:loser) { double :player, choice: :scissors }
  let(:winner) { double :player, choice: :rock }

  it 'should add players' do
    game.add(player)
    expect(game.player_count).to eq 1
  end

  it 'should add no more than two players' do
    expect{ 3.times {game.add(player)} }.to raise_error 'too many players!'
  end

  it 'should recognise a victory status' do
    2.times {game.add(player)}
    expect(game.result).to eq :draw
  end

  it 'should recognise a player 1 victory' do
    game.add(winner)
    game.add(loser)
    expect(game.result).to eq :player_1_wins
  end

  it 'should recognise a player 2 victory' do
    game.add(loser)
    game.add(winner)
    expect(game.result).to eq :player_2_wins
  end


	
end