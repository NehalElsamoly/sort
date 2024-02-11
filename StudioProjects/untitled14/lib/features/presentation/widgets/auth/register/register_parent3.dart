import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled14/features/presentation/widgets/auth/register/verficationotp_confirm_email.dart';

import '../../../../../core/ulits/const.dart';
import '../../custom_button.dart';
import '../../customtextfield.dart';
import '../../textsmall.dart';
import '../../title.dart';

class RegisterParent3 extends StatefulWidget {
  const RegisterParent3({super.key});

  @override
  State<RegisterParent3> createState() => _RegisterParent3State();
}

class _RegisterParent3State extends State<RegisterParent3> {
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
                        "Please enter your Job and Gendar for your account",
                    textsmall: Colors.black,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  CustomTextfield(
                    hintTex: 'Name of your Job',
                    obs: false,
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
                    tbutton: 'Send',
                    wbutton: MediaQuery.of(context).size.width / 2,
                    hbutton: MediaQuery.of(context).size.height / 12,
                    colorbutton: kprimarycolor,
                    founbutton: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerficationOTPEmail()));
                    },
                  )),
                ]),
          ),
        ),
      ),
    );
  }
}
