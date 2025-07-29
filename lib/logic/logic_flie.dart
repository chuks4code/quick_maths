
import 'dart:math';

class Logic {


  final int num1;
  final int num2;
  final String operator;
  final double correctAnswer;

  Logic(this.num1, this.num2, this.operator, this.correctAnswer);

  String get questionText => '$num1 $operator $num2 = ?';

  static Logic generate() {
  final rand = Random();   // // Creates a random number generator
  int n1 = rand.nextInt(20) + 1;   //nextInt inbuilt fuction that uses it (rand) generates random int from 0 to 19 in this case
  int n2 = rand.nextInt(20) + 1;
  double answer;
  List<String> operatorr = ['+', '-', '×', '÷'];
  String op = operatorr[rand.nextInt(operatorr.length)];  // so operatorr.length)];will give 4 to the nextInta()


    switch (op) {
  case '+': {   // if the operator matches that of the random generator them do this case and break out of switch
  answer = (n1 + n2).toDouble();  // converts the additon of n1 + n2 to double and save it in answer
  break;
  }
  case '-': {
  answer = (n1 - n2).toDouble();
  break;
  }
  case '×': {
  answer = (n1 * n2).toDouble();
  break;
  }

  case '÷': {
    int answer2 = rand.nextInt(10) + 1;  // answer between 1–10
    n2 = rand.nextInt(10) + 1;      // divisor
    n1 = answer2 * n2;                   // dividend
    answer = answer2.toDouble();
  }

  default: {
  answer = 0;
  }
  }

  return Logic(n1, n2, op, answer);
  }
  }




