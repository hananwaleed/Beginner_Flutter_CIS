import 'dart:io';

class Tictactoe {
  late List<List<String>> board;
  late String currentPlayer;

  Tictactoe() {
    restartGame();
  }

  void restartGame() {
    board = List.generate(3, (_) => List.filled(3, ' '));
    currentPlayer = "x";
  }

  void displayBoard() {
    for (var i = 0; i < 3; i++) {
      print(board[i].join(" | "));
      if (i < 2) {
        print('-' * 9);
      }
    }
  }

  void makeMove(int row, int col) {
    if (row < 0 || row >= 3 || col < 0 || col >= 3) {
      print("Invalid move! Out of bounds");
      return;
    }
    if (board[row][col] != " ") {
      print("Invalid move! The spot is already taken");
      return;
    }
    board[row][col] = currentPlayer;
    currentPlayer = (currentPlayer == "x") ? "o" : "x";
  }

  String? checkWinner() {
    for (var row in board) {
      if (row[0] != ' ' && row[0] == row[1] && row[1] == row[2]) {
        return row[0];
      }
    }

    for (int col = 0; col < 3; col++) {
      if (board[0][col] != ' ' &&
          board[0][col] == board[1][col] &&
          board[1][col] == board[2][col]) {
        return board[0][col];
      }
    }

    if (board[0][0] != ' ' &&
        board[0][0] == board[1][1] &&
        board[1][1] == board[2][2]) {
      return board[0][0];
    }
    if (board[0][2] != ' ' &&
        board[0][2] == board[1][1] &&
        board[1][1] == board[2][0]) {
      return board[0][2];
    }

    if (board.every((row) => row.every((cell) => cell != ' '))) {
      return "Draw";
    }

    return null;
  }

  void play() {
    while (true) {
      displayBoard();
      print("Player $currentPlayer, enter row (0-2):");
      int? row = int.tryParse(stdin.readLineSync()!);
      print("Player $currentPlayer, enter column (0-2):");
      int? col = int.tryParse(stdin.readLineSync()!);

      if (row == null || col == null) {
        print("Invalid input! Please enter numbers only");
        continue;
      }

      makeMove(row, col);
      String? winner = checkWinner();

      if (winner != null) {
        displayBoard();
        if (winner == "Draw") {
          print("The game is a draw!");
        } else {
          print("Player $winner wins!");
        }

        print("Do you want to play again? (Y/N)");
        String? choice = stdin.readLineSync()?.toUpperCase();

        if (choice == "Y") {
          restartGame();
        } else {
          print("Thanks for playing!");
          break;
        }
      }
    }
  }
}