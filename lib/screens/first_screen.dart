import 'package:flutter/material.dart';
import 'package:quick_maths/screens/second_screen.dart';
import 'package:quick_maths/styles/text_styles.dart';
import 'package:quick_maths/widget/game_button_effects.dart';

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
                SizedBox(
                  height: 90,
                  child: Transform.scale(
                    scaleX: 1.2, // width wider
                    scaleY: 1.0, //  height
                    child: Image.asset(
                      'assets/images/app_icon.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                SizedBox(height: 20.0),
                Text(
                  'Can you solve math questions like these???',
                  style: AppTextStyles.primaryText.copyWith(
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/questionsPic.png',
                    width: 400,
                    height: 340.00,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 10.00),
                Text(
                  'Lets find out',
                  style: AppTextStyles.primaryText.copyWith(
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10.00),
                Text(
                  'Press PLAY to start.',
                  style: AppTextStyles.primaryText.copyWith(
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.00),

                /////////////////////////////////////////
                GameButton(
                  text: 'PLAY',
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
                          oop4: logic.opFour,
                          correctAnswers: [
                            logic.calAnswer1,
                            logic.calAnswer2,
                            logic.calAnswer3,
                            logic.calAnswer4,
                          ],
                        ),
                      ),
                    );
                  },
                ),

                ///////////////////////////////////////
                /*InkWell(
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
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
