import 'package:duck_fil_a_ui/screens/menu_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primaryColor: Colors.white,
        accentColor: Color(0xFF8C4A7B),
      ),
      
      home: MenuScreen(),
    );
  }
}

