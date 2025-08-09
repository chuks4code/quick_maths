import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quick_maths/styles/text_styles.dart';

class SecondScreen extends StatefulWidget {
  final int nn1one, nn1two, nn2one, nn2two, nn3one, nn3two, nn4one, nn4two;
  final String oop1, oop2, oop3, oop4;
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
    this.controlAns,
  });

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final TextEditingController controllerr1 = TextEditingController();
  final TextEditingController controllerr2 = TextEditingController();
  final TextEditingController controllerr3 = TextEditingController();
  final TextEditingController controllerr4 = TextEditingController();

  @override
  void dispose() {
    // Dispose controllers to avoid memory leaks
    controllerr1.dispose();
    controllerr2.dispose();
    controllerr3.dispose();
    controllerr4.dispose();
    super.dispose();
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
                widget.nn1one,
                widget.nn1two,
                widget.oop1,
                controllerr1,
              ),
              SizedBox(height: 15.0),
              myDisplayMethod(
                widget.nn2one,
                widget.nn2two,
                widget.oop2,
                controllerr2,
              ),
              SizedBox(height: 15.0),
              myDisplayMethod(
                widget.nn3one,
                widget.nn3two,
                widget.oop3,
                controllerr3,
              ),
              SizedBox(height: 15.0),
              myDisplayMethod(
                widget.nn4one,
                widget.nn4two,
                widget.oop4,
                controllerr4,
              ),
            ],

            InkWell(
              onTap: () {},
              splashColor: Colors.yellow.withOpacity(0.5),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text('Custom ripple color'),
              ),
            ),
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
                controller: widget.controlAns,
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
}
