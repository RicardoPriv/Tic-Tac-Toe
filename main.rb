require_relative "lib/gameplay.rb"
require_relative "lib/gameboard.rb"

board = Gameboard.new
p board
p board.getGameboard

board.setGameboard!([0,1,2])
p board