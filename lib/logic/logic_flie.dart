import 'package:flutter/material.dart';
import 'dart:math';

int n1one=0,n1two=0,n3one=0, n3two=0;
int n2one=0,n2two=0, n4one=0, n4two=0;
double ansOne=0, ansTwo=0, ansThree=0, ansFour=0;
String opOne='+', opTwo='+', opThree='+', opFour='+';


class Logic {

  //Logic({ this.n1one =0,this.n1two =0,this.n1three =0,this.n1four =0, this.n2one=0,this.n2two=0,this.n2three=0,this.n2four=0, this.ansOne=0, this.ansTwo=0 ,this.ansThree=0,this.ansFour=0, this.opOne ='+',this.opTwo ='+',this.opThree ='+',this.opFour ='+'});

  void logicFunc(){
  final rand = Random();   // // Creates a random number generator
   n1one = rand.nextInt(20) + 1;   //nextInt inbuilt fuction that uses it (rand) generates random int from 1 to 20 in this case
   n1two = rand.nextInt(20) + 1;
   n2one = rand.nextInt(20) + 1;   //nextInt inbuilt fuction that uses it (rand) generates random int from 1 to 20 in this case
   n2two = rand.nextInt(20) + 1;
   n3one = rand.nextInt(20) + 1;   //nextInt inbuilt fuction that uses it (rand) generates random int from 1 to 20 in this case
   n3two = rand.nextInt(20) + 1;
   n4one = rand.nextInt(20) + 1;   //nextInt inbuilt fuction that uses it (rand) generates random int from 1 to 20 in this case
   n4two = rand.nextInt(20) + 1;


  List<String> operatorr = ['+', '-', '×', '÷'];
  opOne = operatorr[rand.nextInt(operatorr.length)];  // so operatorr.length)];will give 4 to the nextInta()
  opTwo = operatorr[rand.nextInt(operatorr.length)];
  opThree = operatorr[rand.nextInt(operatorr.length)];
  opFour = operatorr[rand.nextInt(operatorr.length)];

/*  customeSwitchBlock(opOne);
  customeSwitchBlock(opTwo);
  customeSwitchBlock(opThree);
  customeSwitchBlock(opFour);*/



}
}



          /*  void customeSwitchBlock() {
              switch (opOne) {
                case '+':
                  { // if the operator matches that of the random generator them do this case and break out of switch
                    if ( == opOne) {
                      ansOne = (n1one + n1two)
                          .toDouble(); // converts the additon of n1 + n2 to double and save it in answer
                    } else if (inputt == opTwo) {
                      ansTwo = (n2one + n2two)
                          .toDouble();
                    } else if (inputt == opThree) {
                      ansThree = (n3one + n3two)
                          .toDouble();
                    } else {
                      ansFour = (n4one + n4two)
                          .toDouble();
                    }
                    break;
                  }
                case '-': { // if the operator matches that of the random generator them do this case and break out of switch
                  if (inputt == opOne) {
                    ansOne = (n1one - n1two)
                        .toDouble(); // converts the additon of n1 + n2 to double and save it in answer
                  } else if (inputt == opTwo) {
                    ansTwo = (n2one - n2two)
                        .toDouble();
                  } else if (inputt == opThree) {
                    ansThree = (n3one - n3two)
                        .toDouble();
                  } else {
                    ansFour = (n4one - n4two)
                        .toDouble();
                  }
                  break;
                }
                case '×': { // if the operator matches that of the random generator them do this case and break out of switch
                  if (inputt == opOne) {
                    ansOne = (n1one * n1two)
                        .toDouble(); // converts the additon of n1 + n2 to double and save it in answer
                  } else if (inputt == opTwo) {
                    ansTwo = (n2one * n2two)
                        .toDouble();
                  } else if (inputt == opThree) {
                    ansThree = (n3one * n3two)
                        .toDouble();
                  } else {
                    ansFour = (n4one * n4two)
                        .toDouble();
                  }
                  break;
                }

                case '÷': {

                  { // if the operator matches that of the random generator them do this case and break out of switch
                    if (inputt == opOne) {
                        n1one  = n1one * n1two;
                      ansOne = (n1one / n1two)
                          .toDouble(); // converts the additon of n1 + n2 to double and save it in answer
                    } else if (inputt == opTwo) {
                      n2one = n2one * n2two;
                      ansTwo = (n2one / n2two)
                          .toDouble();
                    } else if (inputt == opThree) {
                      n3one  = n3one * n3two;
                      ansThree = (n3one / n3two)
                          .toDouble();
                    } else {
                      n4one  = n4one * n4two;
                      ansFour = (n4one / n4two)
                          .toDouble();
                    }
                    break;
                  }
                }

                default: {
                   ansOne;ansTwo;ansThree;ansFour;
                }
              }

            }*/




