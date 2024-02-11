import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/ulits/const.dart';
import '../../custom_button.dart';
import '../../textsmall.dart';
import '../../title.dart';
import '../../vertification_box.dart';


class VerficationOTP extends StatelessWidget {
  const VerficationOTP({super.key, required this.confirm});
  final VoidCallback confirm;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 7,
          ),
          Center(
            child: Titles(
              title: 'Verfication OTP',
              fsize: 35.sp,
              ttextcolor: kprimarycolor,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: TextContent(
              contant:
                  "check your mail, we've send you the otp to name@gamil.com",
              textsmall: Colors.black,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          const Form(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                VerificationBox(),
                VerificationBox(),
                VerificationBox(),
                VerificationBox(),
              ])),
          Center(
            child: CustomButton(
              tbutton: 'Continue',
              hbutton: MediaQuery.of(context).size.height / 12,
              wbutton: MediaQuery.of(context).size.width / 2,
              colorbutton: kprimarycolor,
              founbutton: confirm,
            ),
          )
        ],
      ),
    );
  }
}
