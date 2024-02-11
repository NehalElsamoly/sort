import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled14/features/presentation/widgets/auth/login/verficationotp_forgetpassword_view.dart';

import '../../../../../core/ulits/const.dart';
import '../../custom_button.dart';
import '../../customtextfield.dart';
import '../../textsmall.dart';
import '../../title.dart';
import '../register/register_parent.dart';
import 'forget_password.dart';
import 'loginscreen.dart';
import 'massage.dart';


class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});
  static String id = 'ForgetPassword page';

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  String? _state;
  TextEditingController emailContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            Titles(
              title: ' ForgetPassword',
              fsize: 30.sp,
              ttextcolor: kprimarycolor,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 20),
              child: const TextContent(
                contant:
                    "Don't worry! it's happens. please enter your email and we'll send OTP to your email",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            CustomTextfield(
              hintTex: ' Email address',
              labelTex: ' Email address',
              controller: emailContoller,
              type: TextInputType.emailAddress,
              obs: false,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(
                  flex: 2,
                ),
                Radio(
                  value: "Parent",
                  groupValue: _state,
                  onChanged: (value) => {
                    setState(() {
                      _state = value as String?;
                    })
                  },
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
                  groupValue: _state,
                  onChanged: (value) => {
                    setState(() {
                      _state = value as String?;
                    })
                  },
                  activeColor: kprimarycolor,
                ),
                Titles(
                  title: "Student",
                  fsize: 16.sp,
                  ttextcolor: kprimarycolor,
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Center(
              child: CustomButton(
                tbutton: 'Send',
                wbutton: MediaQuery.of(context).size.width / 2,
                hbutton: MediaQuery.of(context).size.height / 15,
                colorbutton: kprimarycolor,
                founbutton: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              VerficationOTPForgetPassword()));
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
