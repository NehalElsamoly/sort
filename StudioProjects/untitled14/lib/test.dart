import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropdownExample extends StatefulWidget {
  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String selectedOption = '';
  List<String> days = List.generate(31, (index) => (index + 1).toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Dropdown with 365 Days'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              icon: Icon(Icons.arrow_drop_down),
              items: [
                DropdownMenuItem(
                  value: 'Day',
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      SizedBox(width: 8),
                      Text('Day'),
                    ],
                  ),
                ),
                for (var day in days)
                  DropdownMenuItem(
                    value: day,
                    child: Text(day),
                  ),
              ],
              onChanged: (value) {
                setState(() {
               //   selectedOption = value!;
                });
              },
              hint: Text(selectedOption.isEmpty ? 'Select an option' : selectedOption),
            ),
            SizedBox(height: 20),
            Text('Selected Option: $selectedOption'),
          ],
        ),
      ),
    );
  }
}