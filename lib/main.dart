import 'package:flutter/material.dart';
import 'package:practice_project/row_col_stack/practice.dart';
import 'package:practice_project/stack_widget.dart';
import 'package:practice_project/text_fromfid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TextFromFild(),
      // home: PracticeScreen(),
    );
  }
}
