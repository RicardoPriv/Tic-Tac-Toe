require_relative "gameboard.rb"

module Gameplay
  def play
    gameboard = Gameboard.new
    player1_turn = true
    has_winner = false

    until has_winner
      choice = get_player_choice
      symbol = player1_turn ? Gameboard::NOUGHT : Gameboard::CROSS
      inserted = gameboard.insert_into_board(choice[0], choice[1], symbol)
      
      if inserted
        player1_turn = !player1_turn 
        has_winner = is_winner?(gameboard)
        unless gameboard.empty_space_exists?
          gameboard.draw_board
          game_over(false)
          return
        end
      else
        puts "///\nPosition already selected\nPlease choose another position"
      end

      gameboard.draw_board
    end

    player = !player1_turn ? "Player 1" : "Player 2"
    game_over(has_winner, player)
  end

  def game_over(is_winner=false, player="Player 1")
    if (is_winner)
      puts "\n---\nGame Over\nCongratulations #{player} for winning\n"
    else
      puts "\n---\nGame Over\nResulted in a draw\n"
    end
  end

  def is_winner?(gameboard)
    return (gameboard.full_horizontal_exists? or gameboard.full_vertical_exists? or gameboard.full_diagonal_exists?)
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