class Game

	attr_reader :players

	def initialize
		@players = []
		@player1wins = [[:scissors, :paper], [:rock, :scissors], [:paper, :rock]]
	end

	def add(player)
		player_count == 2 ? raise('too many players!') : @players << player
	end

	def player_count
		@players.length
	end

	def result
		return :player_1_wins if @player1wins.include?([@players[0].choice, @players[1].choice])
		@players[0].choice == @players[1].choice ? :draw : :player_2_wins
	end

end 