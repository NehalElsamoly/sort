import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled14/features/presentation/widgets/auth/register/register_child2.dart';

import '../../../../../core/ulits/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled14/features/presentation/widgets/auth/register/termofus.dart';

import '../../../../../core/ulits/const.dart';
import '../../custom_button.dart';
import '../../customtextfield.dart';
import '../../datepicker.dart';
import '../../image_picker.dart';
import '../../selector.dart';
import '../../textsmall.dart';
import '../../title.dart';
import '../login/loginscreen.dart';


class MassageRegister extends StatelessWidget {
  const MassageRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlertDialog(
        backgroundColor: Colors.white,
        content: SingleChildScrollView(
          child: ListBody(children: [
            SvgPicture.asset(confirmRegister, fit: BoxFit.contain),
            SizedBox(
              height: MediaQuery.of(context).size.width / 40,
            ),
            Center(
              child: Titles(
                title: "Confirm Register",
                fsize: 25.sp,
                ttextcolor: kprimarycolor,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 7),
              child: const TextContent(
                contant:
                    'Your register to our system has been successfully completed. please wait and check your email to know your interview appointment',
                textsmall: textSmall,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 30),
              child: const TextContent(
                contant: 'Are You sure this information is true?',
                textalign: TextAlign.center,
                textsmall: textSmall,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomButton(
                tbutton: "Login",
                hbutton: MediaQuery.of(context).size.height / 18,
                wbutton: MediaQuery.of(context).size.width / 2,
                colorbutton: kprimarycolor,
                founbutton: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Login()));
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            )
          ]),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / 20,
        ),
      ),
    );
  }
}
