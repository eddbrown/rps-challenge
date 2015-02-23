require 'player'

describe Player do

	let(:player) { Player.new }


	it 'should have a choise' do
		player.choose(:paper)
		expect(player.choice).to eq(:paper)
	end

	it 'should raise an error if anything but rps is passed' do
		expect{player.choose(:not_rps)}.to raise_error 'not rp or s'
	end



end