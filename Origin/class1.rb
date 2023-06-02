class Game
  attr_accessor :board

  def initialize
    @board = {'00':'N','01':'N','02':'N','10':'N','11':'N','12':'N','20':'N','21':'N','22':'N'}
  end

  def movement_from_w(square_movement)
    if @board.count{|k, v| v == 'W'  } >= 3
      then
      my_array = []
      puts "you already have 3 squares taken, please choose one between the following to be removed"
      @board.each do |key, value|
        if value == 'W'
          my_array << key
        end
      end
      puts my_array
      #user tells me one value
      removed_square = Whatevertheuserprompts

      # ask user for square to be removed (remove_square)
      @board[removed_square]='N'
    end
    @board[square_movement]='W'
    puts "You have taken the square #{square_movement}"
  end

  def movement_from_b(square_movement)
    @board[square_movement]='B'


    puts "You have taken the square #{square_movement}"
    text = "You have taken the square #{square_movement}"
  end

end
