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

    return false unless @board[row][col] == " "

    set_element_at(row, col, character)
  end

  def empty_space_exists?
    @board.each do |row|
      return true if row.include?(" ")
    end
    
    return false
  end

  def full_horizontal_exists?
    @board.each do |row|
      return true if row.uniq.length == 1 and row[0] != " "
    end
    
    return false
  end

  def full_vertical_exists?  
    return (0..2).any? {|col| @board[0][col] == @board[1][col] and @board[0][col] == @board[2][col] and @board[0][col] != " "}
  end

  def full_diagonal_exists?
    return [@board[0][0], @board[1][1], @board[2][2]].uniq.length == 1 && @board[0][0] != " " || 
           [@board[0][2], @board[1][1], @board[2][0]].uniq.length == 1 && @board[0][2] != " "
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