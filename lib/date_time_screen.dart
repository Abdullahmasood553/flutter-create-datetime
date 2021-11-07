import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeScreen extends StatefulWidget {
  DateTimeScreen({Key? key}) : super(key: key);

  @override
  _DateTimeScreenState createState() => _DateTimeScreenState();
}

class _DateTimeScreenState extends State<DateTimeScreen> {
  @override
  Widget build(BuildContext context) {
    final format = DateFormat("yyyy-MM-dd HH:mm");
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[600],
          title: Text('Date Time Field'),
        ),
        body: Container(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: DateTimeField(
              decoration: InputDecoration(
                labelText: 'Choose Date & Time',
              ),
              format: format,
              onShowPicker: (context, currentValue) async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: currentValue ?? DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2200),
                );
                if (date != null) {
                  final time = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.fromDateTime(
                      currentValue ?? DateTime.now(),
                    ),
                  );
                  return DateTimeField.combine(date, time);
                } else {
                  return currentValue;
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
