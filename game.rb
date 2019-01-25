require_relative 'player'	
require_relative 'board'
require_relative 'issue'
require_relative 'others'

class Game
	# Commencer le jeu

  def initialize
  	init_player
    create_board
    puts "Let's play!"
    play
  end

  # C'est ici que le jeu commence et elle se termine que lorsqu'il y a victoire ou égalité
  def play
    while (victory? != true) && (draw? != true)
      puts @player
      puts @player1
      puts @player2
      switch(@player)
      puts @player
      # afficher le tableau
      show_board

      # faire jouer le joueur principal
      puts "A toi de jouer #{select_name(@player)}"

      # recuperer sa value et la mettre dans le tableau qu'il a choisi
      print "> "
      choice = gets.chomp.to_i
      ##parcourir le tableau
      for i in 0..2
        for j in 0..2
          @plateau[i][j] = select_value(@player) if @plateau[i][j] == choice
        end
      end

      system ('clear')
    end
    show_board
    game_over
  end

  # Fin de partie?
  def game_over
    if victory?
      puts "#{select_name(@player)} win!"
    elsif draw?
      puts "Beau match!"
    end
    # rounds += 1
    restart?
  end

  # Proposer de rejouer, si oui relancer a partir de # Commencer le jeu, si non bye bye
  def restart?
    #puts "rounds : #{rounds}"
    #puts "Player1 won #{rounds} round(s)"
    #puts "Player2 won #{rounds} round(s)"
    puts "Try again ? (press 'Q' to quit)"
    print "> "
    ch = gets.chomp
    if ch.upcase != 'Q'
      $plateau = create_board
      @player = choose_player
      victory = false
      system ('clear')
      play
    else
    	system ('clear')
      puts "See you soon!"
    end
  end
end