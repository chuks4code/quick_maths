import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quick Maths')),
      body: SafeArea(child: Column(
        children: [
          Text('Can you solve all questions before time runs-out?'),
          Text('Lets find out'),
          Text('Press PLAY to start.'),
        ],
      )
      ),
    );
  }
}
