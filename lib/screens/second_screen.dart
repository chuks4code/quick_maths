import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quick_maths/styles/text_styles.dart';

import '../controllers/game_controllers.dart';
import '../logic/logic_flie.dart';

class SecondScreen extends StatefulWidget {

  final int nn1one, nn1two, nn2one, nn2two, nn3one, nn3two, nn4one, nn4two;
  final String oop1, oop2, oop3, oop4;
  final List<int> correctAnswers;
  final TextEditingController? controlAns;

  const SecondScreen({
    super.key,
    required this.nn1one,
    required this.nn1two,
    required this.nn2one,
    required this.nn2two,
    required this.nn3one,
    required this.nn3two,
    required this.nn4one,
    required this.nn4two,
    required this.oop1,
    required this.oop2,
    required this.oop3,
    required this.oop4,
    this.controlAns, required this.correctAnswers,
  });

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  late  int nn1one_SecClass, nn1two_SecClass, nn2one_SecClass, nn2two_SecClass, nn3one_SecClass, nn3two_SecClass, nn4one_SecClass, nn4two_SecClass;
  late  String oop1_SecClass, oop2_SecClass, oop3_SecClass, oop4_SecClass;
  late List<int> correctAnswers_SecClass;
  late String popText;


  final TextEditingController controllerr1 = TextEditingController();
  final TextEditingController controllerr2 = TextEditingController();
  final TextEditingController controllerr3 = TextEditingController();
  final TextEditingController controllerr4 = TextEditingController();
  String result ='';



    @override
    void initState() {
      super.initState();
      nn1one_SecClass = widget.nn1one;
      nn1two_SecClass = widget.nn1two;
      nn2one_SecClass = widget.nn2one;
      nn2two_SecClass = widget.nn2two;
      nn3one_SecClass = widget.nn3one;
      nn3two_SecClass = widget.nn3two;
      nn4one_SecClass = widget.nn4one;
      nn4two_SecClass = widget.nn4two;

      oop1_SecClass = widget.oop1;
      oop2_SecClass = widget.oop2;
      oop3_SecClass = widget.oop3;
      oop4_SecClass = widget.oop4;
      correctAnswers_SecClass = widget.correctAnswers;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Enter Answer and Submit')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 15.0),
              myDisplayMethod(
                nn1one_SecClass,
                nn1two_SecClass,
                oop1_SecClass,
                controllerr1,
              ),
              SizedBox(height: 15.0),
              myDisplayMethod(
                nn2one_SecClass,
                nn2two_SecClass,
                oop2_SecClass,
                controllerr2,
              ),
              SizedBox(height: 15.0),
              myDisplayMethod(
                nn3one_SecClass,
                nn3two_SecClass,
                oop3_SecClass,
                controllerr3,
              ),
              SizedBox(height: 15.0),
              myDisplayMethod(
                nn4one_SecClass,
                nn4two_SecClass,
                oop4_SecClass,
                controllerr4,
              ),
              SizedBox(height: 80.0,),


                Text(result, style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w900)),
              Expanded(
                child: Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [


                    InkWell(
                      onTap: () {

                        if (controllerr1.text.trim().isEmpty ||
                            controllerr2.text.trim().isEmpty ||
                            controllerr3.text.trim().isEmpty ||
                            controllerr4.text.trim().isEmpty) {
                          setState(() {
                           //
                            result = 'Please enter all answers first';
                          });
                           /* ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Please enter answers first')),
                          );*/
                          return;
                        }


                        List  userAnswers = [controllerr1.text, controllerr2.text, controllerr3.text, controllerr4.text];
                        setState(() {
                          result = evaluateAnswers( userAnswers, correctAnswers_SecClass,);
                        });
                       /* print(calcAnswers);
                        print(userAnswers);
                        print(result);*/

                      },
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        alignment: Alignment.center,
                        width: 180.0,
                        height: 70.0,
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('Submit',style: AppTextStyles.primaryText,),
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        Logic logic = Logic();
                        logic.logicFunc();

                    setState(() {
                      nn1one_SecClass =  logic.n1one;
                      nn1two_SecClass = logic.n1two;
                      nn2one_SecClass = logic.n2one;
                      nn2two_SecClass = logic.n2two;
                      nn3one_SecClass = logic.n3one;
                      nn3two_SecClass = logic.n3two;
                      nn4one_SecClass = logic.n4one;
                      nn4two_SecClass = logic.n4two;
                      oop1_SecClass = logic.opOne;
                      oop2_SecClass = logic.opTwo;
                      oop3_SecClass = logic.opThree;
                      oop4_SecClass = logic.opFour;

                      correctAnswers_SecClass = [logic.calAnswer1, logic.calAnswer2, logic.calAnswer3, logic.calAnswer4];

                      controllerr1.clear();
                          controllerr2.clear();
                          controllerr3.clear();
                          controllerr4.clear();
                          result = '';
                        });

                      },
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        alignment: Alignment.center,
                        width: 180.0,
                        height: 70.0,
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('Play Again',style: AppTextStyles.primaryText,),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.0),
            ],

            //////////////////////////


          ),
        ),
      ),
    );
  }

  Container myDisplayMethod(
    int a,
    int b,
    String op,
    TextEditingController inputAns,
  ) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.blue.shade500,
      ),
      padding: EdgeInsets.only(left: 5.0, right: 5.0),
      child: Flexible(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 40, // fixed width for first number
              alignment: Alignment.centerRight,
              child: Text(a.toString(), style: AppTextStyles.primaryText),
            ),

            Container(
              width: 17, // fixed width for operator
              alignment: Alignment.center,
              child: Text(op.toString(), style: AppTextStyles.primaryText),
            ),

            Container(
              width: 40, // fixed width for first number
              alignment: Alignment.centerLeft,
              child: Text(b.toString(), style: AppTextStyles.primaryText),
            ),

            Container(
              width: 10, // fixed width for equal sign
              alignment: Alignment.centerRight,
              child: Text(' = ', style: AppTextStyles.primaryText),
            ),

            Container(
              width: 110.00,
              alignment: Alignment.centerRight,
              child: TextField(
                // autofocus: true,
                textAlign: TextAlign.center,
                controller: inputAns,
                style: AppTextStyles.primaryText,
                decoration: InputDecoration(
                  hintText: 'Enter Answer',
                  hintStyle: AppTextStyles.primaryText.copyWith(fontSize: 15.0),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///////////////////////////////////////

}
