import 'package:flutter/material.dart';
import 'package:new_flutter_project/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: MaterialApp(
        home: SignupScreen(),
      ),
    );
  }
}
