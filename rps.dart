import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  bool quit = false;
  List<String> moveAI = ['r', 'p' 's'];
  var randomIndex;
  String playerMove;
  String aiMove;
  stdout.write('Hey! What is your name?');
  stdout.write('\n--->');
  final name = stdin.readLineSync();
  print(":::Hello $name, Welcome to Rock Paper & Scissors:::");
  print("\n");
  while (quit != true) {
    stdout.write('Choose Rock, Paper or Scissors(r/p/s)?');
    stdout.write("--->");
    playerMove = stdin.readLineSync().toString();
    randomIndex = random.nextInt(moveAI.length);
    aiMove = moveAI[randomIndex];
    if (playerMove == aiMove) {
      print("Draw");
    } else {
      if (playerMove == "r" && aiMove == "p") {
        print("AI Wins!");
      } else if (playerMove == "r" && aiMove == "s") {
        print("$name Wins!");
      } else if (playerMove == "p" && aiMove == "r") {
        print("$name Wins!");
      } else if (playerMove == "p" && aiMove == "s") {
        print("AI Wins!");
      } else if (playerMove == "s" && aiMove == "r") {
        print("AI Wins!");
      } else if (playerMove == "s" && aiMove == "p") {
        print("$name Wins!");
      }
    }
    stdout.write("\n Again(y/n)?");
    stdout.write("\n --->");
    String checker = stdin.readLineSync().toString();
    quit = checker == "y" ? false : true;
  }
}
