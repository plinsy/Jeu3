##PLAYER COMMANDS
  # recuperer le nom du joueur
  def select_name(player)
    @player.each {|n , v| @name = n}
    @name
  end

  # recuperer le symbole du joueur
  def select_value(player)
    @player.each {|n , v| @value = v}
    @value
  end

  # permutation de joueur
  def switch
    @player == @player1 ? @player = @player2 : @player = @player1
    @player
  end




