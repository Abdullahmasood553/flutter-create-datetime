import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateScreen extends StatelessWidget {
  const DateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final format = DateFormat("yyyy-MM-dd");
    // final format = DateFormat.yMd();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Date Field'),
          centerTitle: true,
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: DateTimeField(
              decoration: InputDecoration(
                labelText: 'Date',
              ),
              format: format,
              onSaved: (DateTime? value) {
                if (value != null) {
                  print(value);
                }
              },
              onShowPicker: (context, currentValue) async {
                final date = await showDatePicker(
                  context: context,
                  firstDate: DateTime(1900),
                  initialDate: currentValue ?? DateTime.now(),
                  lastDate: DateTime(2100),
                );
                if (date != null) {
                  return date;
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


