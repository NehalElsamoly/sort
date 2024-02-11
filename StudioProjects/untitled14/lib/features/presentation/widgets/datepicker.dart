import 'package:cupertino_date_textbox/cupertino_date_textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime _selectedDateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return CupertinoDateTextBox(
      fontSize: 16.sp,
      initialValue: _selectedDateTime,
      onDateChange: (DateTime birthday) {
        setState(() {
          _selectedDateTime = birthday;
        });
      },
      hintText: DateFormat.yMd().format(_selectedDateTime),
    );
  }
}
