import 'main.dart';
import "package:test/test.dart";

void main() {
  test("Check Size of the board.", () {
    expect(createBoard().length, 3);
    expect(createBoard()[0].length, 3);
    expect(createBoard()[1].length, 3);
    expect(createBoard()[2].length, 3);
  });

  test("Checking winner function", () {
    String X = 'X';
    List<List<String>> board1 = [
      ['X', 'O', ''],
      ['X', 'O', ''],
      ['X', '', ''],
    ];
    List aChoice = ["A1", "A2", "A3"];
    List bChoice = ["B1", "B2"];
    List<List<String>> board2 = [
      ['X', 'O', ''],
      ['O', 'X', ''],
      ['X', 'O', ''],
    ];
    List aChoice1 = ["A1", "A3", "B2"];
    List bChoice2 = ["A2", "B1", "B3"];
    expect(checkWinner(X, board1, aChoice, bChoice), true);
    expect(checkWinner(X, board2, aChoice1, bChoice2), false);
  });
}


