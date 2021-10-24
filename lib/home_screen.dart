import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final format = DateFormat("yyyy-MM-dd");
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Home Screen'),
        ),
        body: Container(
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: DateTimeField(
                      decoration: InputDecoration(
                        labelText: 'From Date',
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
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('List item is $index'),
                      leading: Icon(Icons.thumb_down),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
