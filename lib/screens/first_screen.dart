import 'package:flutter/material.dart';
import 'package:quick_maths/screens/second_screen.dart';

import '../logic/logic_flie.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quick Maths'), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Can you solve all questions before time runs-out?'),
                SizedBox(height: 20.00),
                Text('Lets find out'),
                SizedBox(height: 20.00),
                Text('Press PLAY to start.'),
                SizedBox(height: 60.00),
                InkWell(
                  onTap: () {
                    Logic logic = Logic();
                    logic.logicFunc();

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(
                          nn1one: logic.n1one,
                          nn1two: logic.n1two,
                          nn2one: logic.n2one,
                          nn2two: logic.n2two,
                          nn3one: logic.n3one,
                          nn3two: logic.n3two,
                          nn4one: logic.n4one,
                          nn4two: logic.n4two,
                          oop1: logic.opOne,
                          oop2: logic.opTwo,
                          oop3: logic.opThree,
                          oop4: logic.opFour, correctAnswers: [logic.calAnswer1, logic.calAnswer2, logic.calAnswer3, logic.calAnswer4],
                        ),
                      ),
                    );
                  },
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 45),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text('PLAY'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
