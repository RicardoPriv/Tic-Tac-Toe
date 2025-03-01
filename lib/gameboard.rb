class Gameboard
  NOUGHT = "o"
  CROSS = "x"

  def initialize
    @board = [[" ", " ", " "], [" ", " ", " "], [" ", " ", " "]]
  end

  def set_element_at(row, col, element)
    @board[row][col] = element
  end
  
  def get_gameboard()
    @board
  end

  def insert_into_board(row=0, col=0, character=" ")
    unless [NOUGHT, CROSS].include?(character) 
      raise ArgumentError, "Invalid character passed, must be #{NOUGHT} or #{CROSS}"
    end

    if @board[row][col] == " "
      set_element_at(row, col, character)
    end

    return false
  end

  def draw_board()
    puts "-------------"
    @board.each do |row|
      print("| ")
      row.each do |element|
        print(element.to_s + " | ")
      end
      puts "\n-------------"
    end
  end

end