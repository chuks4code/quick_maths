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
      }  else if (opOne == '-') {
        if( n1one < n1two) {
          int temp = n1one;
          n1one = n1two;
          n1two = temp;
        }
        calAnswer1 = (n1one - n1two);
      } else {
        calAnswer1 = (n1one * n1two);
      }
    }

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
      }  else if (opTwo == '-') {
        if( n2one < n2two) {
          int temp = n2one;
          n2one = n2two;
          n2two = temp;
        }
        calAnswer2 = (n2one - n2two);
      } else {
        calAnswer2 = (n2one * n2two);
      }
    }



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
            if( n3one < n3two) {
              int temp = n3one;
              n3one = n3two;
              n3two = temp;
            }
        calAnswer3 = (n3one - n3two);
      } else {
        calAnswer3 = (n3one * n3two);
      }
    }

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
        if( n4one < n4two) {
          int temp = n4one;
          n4one = n4two;
          n4two = temp;
        }
        calAnswer4 = (n4one - n4two);
      } else {
        calAnswer4 = (n4one * n4two);
      }

    }

  }
}
