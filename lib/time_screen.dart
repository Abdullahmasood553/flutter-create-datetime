import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeScreen extends StatelessWidget {
  const TimeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final format = DateFormat("HH:mm");
    // final format = DateFormat("h:mma");
      final format = DateFormat("HH:mm:ss");
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Time Field'),
          backgroundColor: Colors.indigo[300],
          centerTitle: true,
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: DateTimeField(
              decoration: InputDecoration(
                labelText: 'Time',
              ),
              format: format,
              onSaved: (DateTime? value) {
                if (value != null) {
                  print(value);
                }
              },
              onShowPicker: (context, currentValue) async {
                final time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.fromDateTime(
                    currentValue ?? DateTime.now(),
                  ),
                );
                if (time != null) {
                  return DateTimeField.convert(time);
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
