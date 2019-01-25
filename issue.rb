  # égalité
  def draw?
    for i in 0..2
      for j in 0..2
        if @plateau[i][j].is_a? Integer 
          draw = false
          break
        else
          draw = true
        end
      end
    end
    draw
  end

  # une ligne alignée
  def line?
    line = false
    for i in 0..2
      som = ""
      for j in 0..2
        som += @plateau[i][j].to_s
      end
      if som == select_value(@player) * 3
        line = true 
        break
      end
    end
    line
  end

  # une colonne alignée
  def column?
    column = false
    for i in 0..2
      som = ""
      for j in 0..2
        som += @plateau[j][i].to_s
      end 
      if som == select_value(@player) * 3
        column = true 
        break
      end
    end
    column
  end

  # une diagonale alignée
  def diagonal?
    diagonal = false
    somi = ""
    somj = ""
    for i in 0..2
      j = 2-i
      somi += @plateau[i][i].to_s
      somj += @plateau[i][j].to_s
    end
    if somi == select_value(@player) * 3 || somj == select_value(@player) * 3
      diagonal = true
    end
    diagonal
  end

  # victoire si une ligne ou une colonne ou une diagonale s'aligne
  def victory?
    @victory = false
               
    @victory = true if line? || column? || diagonal?
    @victory
  end
