	# Creer un tableau 3X3
  def create_board
    @plateau = []
    @plateau.push([1 , 2 , 3] , [4 , 5 , 6] , [7 , 8 , 9])
  end

  # afficher le tableau
  def show_board
    puts "-------------"
    @plateau.each { |line| 
      line.each { |e| 
        print "| #{e} " 
      }
      puts "|"
      puts "-------------"
    }
  end