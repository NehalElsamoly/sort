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


class RegisterChild extends StatefulWidget {
  const RegisterChild({super.key});

  @override
  State<RegisterChild> createState() => _RegisterChildState();
}

class _RegisterChildState extends State<RegisterChild> {
  String? _state;
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
                        "Please enter your fullname ,date of birth and Upload birth certificate for your account",
                    textsmall: Colors.black,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  CustomTextfield(
                    hintTex: ' Full Name in English',
                    labelTex: ' Full Name in English',
                    obs: false,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  CustomTextfield(
                    hintTex: ' Full Name in Arabic',
                    labelTex: ' Full Name in Arabic',
                    obs: false,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  const ImagePickers(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 35,
                    ),
                    child: const DatePicker(),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  CustomTextfield(
                    hintTex: "National ID",
                    labelTex: "National ID",
                    type: TextInputType.number,
                    obs: false,
                    inputformatter: [
                      FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                      LengthLimitingTextInputFormatter(11)
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Titles(
                    title: 'Select your gender:',
                    fsize: 16.sp,
                    ttextcolor: kprimarycolor,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 10,
                          ),
                          Radio(
                            value: "Male",
                            groupValue: _state,
                            onChanged: (value) => {
                              setState(() {
                                _state = value as String?;
                              })
                            },
                            activeColor: kprimarycolor,
                          ),
                          Titles(
                            title: "Male",
                            fsize: 16.sp,
                            ttextcolor: kprimarycolor,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 5,
                          ),
                          Radio(
                            value: "Female",
                            groupValue: _state,
                            onChanged: (value) => {
                              setState(() {
                                _state = value as String?;
                              })
                            },
                            activeColor: kprimarycolor,
                          ),
                          Titles(
                            title: "Female",
                            fsize: 16.sp,
                            ttextcolor: kprimarycolor,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Center(
                      child: CustomButton(
                    tbutton: 'Continue',
                    wbutton: MediaQuery.of(context).size.width / 2,
                    hbutton: MediaQuery.of(context).size.height / 12,
                    colorbutton: kprimarycolor,
                    founbutton: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterChild2()));
                    },
                  )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
