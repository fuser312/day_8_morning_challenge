import 'package:test/test.dart';

// Write a test case which checks the board size is 3 by 3 and is empty

// Challenge 1
// Write the winning scenario
// 1. Start with checking if a player has all cells in row
// 2. Extend the logic to Columns and diagonal

import 'dart:io';

void main() {
  List<List<String>> board = createBoard();
  printBoard(board);

  List XChoice = [];
  List OChoice = [];

  String currentPlayer = 'X';


  while (true) {
    print('$currentPlayer\'s move');
    String userChoice = stdin.readLineSync();
    int row = getRow(userChoice);
    int column = getColumn(userChoice);
    if (!validate(row, column, board)) {
      print('Invalid Move');
      continue;
    }
    board[row][column] = currentPlayer;
    printBoard(board);
    if (currentPlayer == 'X') {
      XChoice.add(userChoice);
      print(XChoice);
      if(XChoice.contains("A1") && XChoice.contains("A2") && XChoice.contains("A3")){
        print("X won");
        break;
      }
      else if(XChoice.contains("B1") && XChoice.contains("B2") && XChoice.contains("B3")){
        print("X won");
        break;
      }
      else if(XChoice.contains("C1") && XChoice.contains("C2") && XChoice.contains("C3")){
        print("X won");
        break;
      }
      else if(XChoice.contains("A1") && XChoice.contains("B2") && XChoice.contains("C3")){
        print("X won");
        break;
      }
      else if(XChoice.contains("C1") && XChoice.contains("B2") && XChoice.contains("A3")){
        print("X won");
        break;
      }
      currentPlayer = 'O';
    } else {
      OChoice.add(userChoice);
      if(OChoice.contains("A1") && OChoice.contains("A2") && OChoice.contains("A3")){
        print("O won");
        break;
      }
      else if(OChoice.contains("B1") && OChoice.contains("B2") && OChoice.contains("B3")){
        print("O won");
        break;
      }
      else if(OChoice.contains("C1") && OChoice.contains("C2") && OChoice.contains("C3")){
        print("O won");
        break;
      }
      else if(OChoice.contains("A1") && OChoice.contains("B2") && OChoice.contains("C3")){
        print("O won");
        break;
      }
      else if(OChoice.contains("C1") && OChoice.contains("B2") && OChoice.contains("A3")){
        print("O won");
        break;
      }
      currentPlayer = 'X';
      print(OChoice);

    }
  }
}

// Challenge 2
// Write a test case to see if the board is empty and of size 3 by 3
List<List<String>> createBoard() {
  var boardSize = 3;
  return List.generate(boardSize, (_) => List.filled(boardSize, ' '));
}


bool validate(int row, int column, List<List<String>> board) {
  return board[row][column] == ' ';
}

int getColumn(String userInput) => ['A', 'B', 'C'].indexOf(userInput[0]);

int getRow(String userInput) => ['1', '2', '3'].indexOf(userInput[1]);

void printBoard(List<List<String>> board) {
  print('   A   B   C ');
  List<String> rows = board.map(rowToString).toList();
  print('1 ${rows[0]}');
  print('  ---+---+---');
  print('2 ${rows[1]}');
  print('  ---+---+---');
  print('3 ${rows[2]}');
}

String rowToString(List<String> row) {
  return row.map((String val) => ' $val ').join('|');
}
