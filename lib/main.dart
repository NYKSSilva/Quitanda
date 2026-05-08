import 'package:flutter/material.dart';
import 'package:quitanda/src/sign_in_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});



  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.red,
       ),
       debugShowCheckedModeBanner: false,
       home: const SignInScreen(),
    );
  }
}