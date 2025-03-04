import 'dart:io';

void main() {
  List<List<String>> board = [
    [' ', ' ', ' '],
    [' ', ' ', ' '],
    [' ', ' ', ' ']
  ];
  String currentPlayer = 'X';

  while (true) {
    printBoard(board);
    print('Player $currentPlayer, enter your move (row col):');
    var input = stdin.readLineSync();
    if (input == null || input.isEmpty) {
      print('Invalid input. Please try again.');
      continue;
    }

    var parts = input.split(' ');
    if (parts.length != 2) {
      print('Invalid input. Please enter row and column numbers.');
      continue;
    }

    var row = int.tryParse(parts[0]);
    var col = int.tryParse(parts[1]);

    if (row == null || col == null || row < 0 || row > 2 || col < 0 || col > 2) {
      print('Invalid input. Please enter numbers between 0 and 2.');
      continue;
    }

    if (board[row][col] != ' ') {
      print('Cell already occupied. Please try again.');
      continue;
    }

    board[row][col] = currentPlayer;

    if (checkWin(board, currentPlayer)) {
      printBoard(board);
      print('Player $currentPlayer wins!');
      break;
    }

    if (checkDraw(board)) {
      printBoard(board);
      print('The game is a draw!');
      break;
    }

    currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
  }
}

void printBoard(List<List<String>> board) {
  for (var row in board) {
    print(row.join(' | '));
    print('-' * 5);
  }
}

bool checkWin(List<List<String>> board, String player) {
  for (var i = 0; i < 3; i++) {
    if (board[i][0] == player && board[i][1] == player && board[i][2] == player) {
      return true;
    }
    if (board[0][i] == player && board[1][i] == player && board[2][i] == player) {
      return true;
    }
  }
  if (board[0][0] == player && board[1][1] == player && board[2][2] == player) {
    return true;
  }
  if (board[0][2] == player && board[1][1] == player && board[2][0] == player) {
    return true;
  }
  return false;
}

bool checkDraw(List<List<String>> board) {
  for (var row in board) {
    if (row.contains(' ')) {
      return false;
    }
  }
  return true;
}