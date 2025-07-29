import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_maths/screens/first_screen.dart';
//import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(ProviderScope(child: const QuickMaths()));   // ProviderScope used to wrap provided at top level so can be see by all
}

class QuickMaths extends StatelessWidget {
  const QuickMaths({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:FirstScreen(),
    );
  }
}




