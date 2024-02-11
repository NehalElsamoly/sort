import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Seletor extends StatefulWidget {
  const Seletor({super.key});

  @override
  State<Seletor> createState() => _SeletorState();
}

class _SeletorState extends State<Seletor> {
  String? selectedValue;

  List<String> items = [
    'level one',
    'level two',
    'level three',
    'level four',
    'level five',
    'level six',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500.r,
        height: 600.h,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton2(
            hint: Text(
              'Select Level',
              style: TextStyle(
                fontSize: 20.sp,
                color: Theme.of(context).hintColor,
              ),
            ),
            items: items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.w500),
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value as String;
              });
            },
          ),
        ),
      ),
    );
  }
}
