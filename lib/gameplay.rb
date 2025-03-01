require_relative "gameboard.rb"

module Gameplay
  def play
    gameboard = Gameboard.new
    player1_turn = true

    until is_winner?(gameboard)
      choice = get_player_choice
      symbol = player1_turn ? Gameboard::NOUGHT : Gameboard::CROSS
      gameboard.insert_into_board(choice[0], choice[1], symbol)
      gameboard.draw_board
      player1_turn = !player1_turn
    end
  end

  def is_winner?(gameboard)
    return false
  end

  def get_player_choice
    row = get_valid_choice("row")
    col = get_valid_choice("column")
    return [row, col]
  end

  def get_valid_choice(type)
    print("Enter the #{type} of your choice:")
    input = gets

    until ("1\n".."3\n").include?(input)
      print("Invalid position, please enter a #{type} from 1 to 3:")
      input = gets
    end

    return (input.to_i - 1)
  end
end