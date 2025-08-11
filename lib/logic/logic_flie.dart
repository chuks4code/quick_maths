import 'dart:math';



class Logic {
  int n1one = 0,
      n1two = 0,
      n3one = 0,
      n3two = 0,
      calAnswer1 = 0,
      calAnswer2 = 0,
      calAnswer3 = 0,
      calAnswer4 = 0;
   int n2one = 0, n2two = 0, n4one = 0, n4two = 0;
   String opOne = '', opTwo = '', opThree = '', opFour = '';


  void logicFunc() {
    final rand = Random(); // // Creates a random number generator

    List<String> operatorr = ['+', '-', '×', '÷'];
    opOne = operatorr[rand.nextInt(operatorr.length,)]; // so operatorr.length)];will give 4 to the nextInta()
    if (opOne == '÷') {
      n1one = rand.nextInt(9) + 1; //nextInt inbuilt fuction that uses it (rand) generates random int from 1 to 10 in this case
      n1two = rand.nextInt(9) + 1;
      n1one = n1one * n1two;
      calAnswer1 = (n1one / n1two).toInt();
    } else {
      n1one = rand.nextInt(20) + 1; //nextInt inbuilt fuction that uses it (rand) generates random int from 1 to 20 in this case
      n1two = rand.nextInt(20) + 1;
      if (opOne == '+') {
        calAnswer1 = (n1one + n1two);
      } else if (opOne == '-') {
        calAnswer1 = (n1one - n1two);
      } else {
        calAnswer1 = (n1one * n1two);
      }
    }
    print('$n1one gen1f');
    print('$n1two gen1sec');
    print(opOne);
    print('$calAnswer1  one');
    //////////////////////////////////////////////////////////////////
    opTwo = operatorr[rand.nextInt(operatorr.length)];
    if (opTwo == '÷') {
      n2one =
          rand.nextInt(9) +
          1; //nextInt inbuilt fuction that uses it (rand) generates random int from 1 to 10 in this case
      n2two = rand.nextInt(9) + 1;
      n2one = n2one * n2two;
      calAnswer2 = (n2one / n2two).toInt();
    } else {
      n2one =
          rand.nextInt(20) +
          1; //nextInt inbuilt fuction that uses it (rand) generates random int from 1 to 20 in this case
      n2two = rand.nextInt(20) + 1;
      if (opTwo == '+') {
        calAnswer2 = (n2one + n2two);
      } else if (opTwo == '-') {
        calAnswer2 = (n2one - n2two);
      } else {
        calAnswer2 = (n2one * n2two);
      }
    }
    print('$n2one n2one');
    print('$n2two n2two');
    print(opTwo);
    print('$calAnswer2 two');
    ///////////////////////////////////////////////////////////////

    opThree = operatorr[rand.nextInt(operatorr.length)];
    if (opThree == '÷') {
      n3one =
          rand.nextInt(9) +
          1; //nextInt inbuilt fuction that uses it (rand) generates random int from 1 to 10 in this case
      n3two = rand.nextInt(9) + 1;
      n3one = n3one * n3two;
      calAnswer3 = (n3one / n3two).toInt();
    } else {
      n3one =
          rand.nextInt(20) +
          1; //nextInt inbuilt fuction that uses it (rand) generates random int from 1 to 20 in this case
      n3two = rand.nextInt(20) + 1;
      if (opThree == '+') {
        calAnswer3 = (n3one + n3two);
      } else if (opThree == '-') {
        calAnswer3 = (n3one - n3two);
      } else {
        calAnswer3 = (n3one * n3two);
      }
    }
    print('$n3one n3one');
    print('$n3two n3two');
    print(opThree);
    print('$calAnswer3 three');

    ////////////////////////////////////////////////////////////////////////////
    opFour = operatorr[rand.nextInt(operatorr.length)];
    if (opFour == '÷') {
      n4one =
          rand.nextInt(9) +
          1; //nextInt inbuilt fuction that uses it (rand) generates random int from 1 to 10 in this case
      n4two = rand.nextInt(9) + 1;
      n4one = n4one * n4two;
      calAnswer4 = (n4one / n4two).toInt();
    } else {
      n4one =
          rand.nextInt(20) +
          1; //nextInt inbuilt fuction that uses it (rand) generates random int from 1 to 20 in this case
      n4two = rand.nextInt(20) + 1;
      if (opFour == '+') {
        calAnswer4 = (n4one + n4two);
      } else if (opFour == '-') {
        calAnswer4 = (n4one - n4two);
      } else {
        calAnswer4 = (n4one * n4two);
      }

    }
    print('$n4one n4one');
    print('$n4two n4two');
    print(opFour);
    print('$calAnswer4 four');

    /*print(calAnswer1);
    print(calAnswer2);
    print(calAnswer3);
    print(calAnswer4);*/
  }
}
