import 'package:date_time/date_time_screen.dart';
import 'package:date_time/time_screen.dart';
import 'package:flutter/material.dart'; 

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DateTimeScreen(),
    );
  }
}
