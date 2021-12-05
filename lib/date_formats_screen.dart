import 'package:flutter/material.dart';


class DateFormat extends StatelessWidget {
  const DateFormat({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Individual units

    // var currentDate = DateTime.now();
    // print(currentDate.year);
    // print(currentDate.month);
    // print(currentDate.day);
    // print(currentDate.minute);
    // print(currentDate.second);

    // add();
    // var addDt = DateTime.now();
    // print(addDt.add(Duration(days: 1, hours: 2, minutes: 10)));

    // isAfter(); isBefore()
    // This method returns a bool after checking both values

    // var now = DateTime.now();
    // var later = now.add(const Duration(seconds: 5));
    // print(later.isBefore(now));

    // compareTo isAtSameMomentAs()

    // var date = DateTime.now().day;
    // var anothterDate = DateTime.now().day;
    // print(date.compareTo(anothterDate));

    // var date = DateTime.now();
    // var anotherDate = DateTime.now().add(Duration(hours: 1));
    // print(date.compareTo(anotherDate));

    // Returns a negative number if this is less than other
    // Zero if they are equal
    //Positive number if its greater than other.
    // var date = DateTime.now();
    // var anotherDate = DateTime.now().subtract(Duration(hours: 20));
    // print(date.compareTo(anotherDate));

    // This method converts a given date into UTC(Universal time coordinate)
    // var currentDate = DateTime.now();
    // print(currentDate.isUtc);
    // print(currentDate.toUtc());
    // print(currentDate.timeZoneName);
    //  print(currentDate.timeZoneOffset);

    // Parsing Date
    // String date = "1995-01-05";
    // DateTime parseDate = DateTime.parse(date);
    // print(parseDate);


    return Container();
  }
}
