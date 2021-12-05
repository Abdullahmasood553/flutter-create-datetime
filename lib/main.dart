import 'package:date_time/date_formats_screen.dart';
import 'package:date_time/date_screen.dart';
import 'package:date_time/date_time_screen.dart';
import 'package:date_time/time_screen.dart';
import 'package:flutter/material.dart';

import 'date_format_test.dart'; 

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: DateTest(),
    );
  }
}
