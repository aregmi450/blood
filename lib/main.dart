import 'package:flutter/material.dart';
import 'package:new_flutter_project/contact.dart';
import 'package:new_flutter_project/homescreen.dart';
import 'package:new_flutter_project/hospitals.dart';
import 'package:new_flutter_project/signin.dart';
import 'package:new_flutter_project/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      // routing different pages from one place to another
      initialRoute: 'SignIn',
      // class name of every other page on stateless widget is given
      // routing to every other page when class is called
      routes: {
        'SignIn': (context) => SignInScreen(),
        'SignUp': (context) => SignUpScreen(),
        'Home': (context) => HomeScreen(),
        'Phone': (context) => Contact(),
        'Hospital': (context) => Hospital(),
      },
    );
  }
}
