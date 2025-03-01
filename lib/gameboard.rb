


class Gameboard
  def initialize
    @board = [[0,0,0], [0,0,0], [0,0,0]]
  end
  
  def getGameboard()
    @board
  end

  def setGameboard!(newBoard)
    @board = newBoard
  end

end