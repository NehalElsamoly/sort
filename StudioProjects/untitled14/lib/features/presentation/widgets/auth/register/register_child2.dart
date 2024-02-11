import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled14/features/presentation/widgets/auth/register/termofus.dart';

import '../../../../../core/ulits/const.dart';
import '../../custom_button.dart';
import '../../customtextfield.dart';
import '../../selector.dart';
import '../../textsmall.dart';
import '../../title.dart';

class RegisterChild2 extends StatefulWidget {
  const RegisterChild2({super.key});

  @override
  State<RegisterChild2> createState() => _RegisterChild2State();
}

class _RegisterChild2State extends State<RegisterChild2> {
  String dropdownValue = 'one';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.sp),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  SvgPicture.asset(
                    logoIc,
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Titles(
                    title: 'Register',
                    fsize: 30.sp,
                    ttextcolor: kprimarycolor,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const TextContent(
                    contant:
                        "Please enter your name and  email and phone number for your account",
                    textsmall: Colors.black,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  CustomTextfield(
                    obs: false,
                    hintTex: "Enter The Previous School Name",
                    labelTex: "Enter The Previous School Name",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  CustomTextfield(
                    obs: false,
                    hintTex: "Enter The Previous School Rate",
                    labelTex: "Enter The Previous School Rate",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 34,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 40,
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 15,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Seletor(),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  Center(
                      child: CustomButton(
                    tbutton: 'Submit',
                    wbutton: MediaQuery.of(context).size.width / 2,
                    hbutton: MediaQuery.of(context).size.height / 12,
                    colorbutton: kprimarycolor,
                    founbutton: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TermOfUs()));
                    },
                  )),
                ]),
          ),
        ),
      ),
    );
  }
}
