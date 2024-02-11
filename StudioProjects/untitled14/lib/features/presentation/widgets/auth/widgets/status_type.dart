import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/ulits/const.dart';
import '../../title.dart';

class Status extends StatelessWidget {
  Status({super.key, this.state});
  String? state;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Radio(
          value: "Parent",
          groupValue: state,
          onChanged: (value) => {state = value as String?},
          activeColor: kprimarycolor,
        ),
        Titles(
          title: "Parent",
          fsize: 16.sp,
          ttextcolor: kprimarycolor,
        ),
        const Spacer(
          flex: 1,
        ),
        Radio(
          value: "student",
          groupValue: state,
          onChanged: (value) => {state = value as String?},
          activeColor: kprimarycolor,
        ),
        Titles(
          title: "Student",
          fsize: 16.sp,
          ttextcolor: kprimarycolor,
        ),
      ],
    );
  }
}
