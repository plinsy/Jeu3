require_relative 'game'

class Application
	def perform
		puts "Bienvenue a toi amateur de Tic Tac Toe!"
		puts "1. Start\n2. Exit"
		print "> "
		c = gets.chomp.to_i
		case c
		when 1
			g = Game.new
		when 2
			system ('clear')
			puts "See you later!"
		end
	end
end