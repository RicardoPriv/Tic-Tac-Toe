# Tic-Tac-Toe Game in Ruby

This is a command-line Tic-Tac-Toe game written in Ruby, designed for two human players to play against each other. It includes features like alternating turns between two players, checking for winners, and handling invalid moves.

## Features

- Two players take turns playing Tic-Tac-Toe.
- Players can choose positions on a 3x3 grid.
- The game checks for a winner after every move.
- Draw detection is included when there are no available moves left.
- User-friendly prompts for row and column selection.

## Requirements

To run this project, you need to have Ruby installed on your machine. You can check if Ruby is installed by running the following command in your terminal:

```bash
ruby -v
```

## Installation

1. Clone the repository to your local machine:

```bash
git clone https://github.com/RicardoPriv/Tic-Tac-Toe.git
cd Tic-Tac-Toe
```

2. Install dependencies:

```bash
bundle install
```

3. Run the game:

```bash
ruby ./main.rb
```

The game will prompt you to enter your moves one at a time. Player 1 will use "O" and Player 2 will use "X". The game will automatically detect when a player wins or when the game ends in a draw.

## How the Game Works

- The game board is displayed after each turn.
- Players are asked to input a row and a column number (1 to 3).
- The program checks if the move is valid and if the space is available.
- Once a player wins or all spaces are filled (a draw), the game ends.

## Example

Here's an example of how the game prompts you for input and displays the board:

```
Enter the row of your choice:2
Enter the column of your choice:2
-------------
|   |   |   |
-------------
|   | X |   |
-------------
|   |   |   |
-------------
```

## Game Flow

1. Player 1 is prompted to choose a position for "O".
2. Player 2 is prompted to choose a position for "X".
3. The game alternates between players, checking for a winner after each move.
4. If a player wins, a message is displayed with the Player and number.
5. If the board is full and there’s no winner, a draw message is displayed.

## Files

- **game.rb**: The main entry point of the game where the gameplay loop runs.
- **gameboard.rb**: Contains the `Gameboard` class that manages the game state (the board) and game logic (inserting moves, checking for a winner).
- **gameplay.rb**: Contains the `Gameplay` module with methods for controlling the game flow, such as prompting for player moves and determining when the game ends.
- **Gemfile**: Specifies the dependencies required for the project.
- **Gemfile.lock**: Stores the exact versions of the installed gems to ensure consistency.