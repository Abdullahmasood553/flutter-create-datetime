import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTest extends StatefulWidget {
  DateTest({Key? key}) : super(key: key);

  @override
  _DateTestState createState() => _DateTestState();
}

class _DateTestState extends State<DateTest> {
  @override
  Widget build(BuildContext context) {
    // Extracting / parsing date in specific format

    final DateTime now = DateTime.now();
    //  // final format = DateFormat("HH:mm");
    // // final format = DateFormat("h:mma");
    //   final format = DateFormat("HH:mm:ss");
    final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mma:ss');
    final String formatted = formatter.format(now);
    print(formatted); // something like 2013-04-20

    return Container();
  }
}
