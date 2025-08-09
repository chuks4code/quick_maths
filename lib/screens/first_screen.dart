import 'package:flutter/material.dart';
import 'package:quick_maths/screens/second_screen.dart';

import '../logic/logic_flie.dart';
import 'first_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('Quick Maths'), centerTitle: true,),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Can you solve all questions before time runs-out?'),
              SizedBox(height: 20.00,),
              Text('Lets find out'),
              SizedBox(height: 20.00,),
              Text('Press PLAY to start.'),
              SizedBox(height: 60.00,),
              InkWell(
                onTap:() {
                  Logic logic  = Logic();
                  logic.logicFunc();
                  if (opOne == '÷' ) {
                    n1one = n1one * n1two;
                  }
                  print(n1one);
                  print(n1two);

                  Navigator.push(context,MaterialPageRoute(builder: (context) =>SecondScreen(nn1one: n1one, nn1two: n1two, nn2one: n2one, nn2two: n2two, nn3one: n3one, nn3two: n3two, nn4one: n4one, nn4two: n4two,  oop1: opOne, oop2: opTwo, oop3: opThree, oop4: opFour,)));},
                  borderRadius: BorderRadius.circular(15),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 45),
                  decoration: BoxDecoration(color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('PLAY'),
                )

              )
            ],
          ),
        ),
      )
      ),
    );
  }
}

