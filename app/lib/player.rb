class Player

	attr_accessor :choice, :choices

	def initialize
		@choices = [:rock, :paper, :scissor]
		@choice = @choices.sample
	end

	def choose(weapon)
		raise 'not rp or s' if !choices.include?(weapon)
		@choice = weapon
	end


end