import 'package:flutter/material.dart';
import 'package:iran_panah/multi_select_dropdown_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: MultiSelectDropDownWidget(),
          ),
        ),
      ),
    );
  }
}
