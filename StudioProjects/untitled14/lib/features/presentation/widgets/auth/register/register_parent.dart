import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled14/features/presentation/widgets/auth/register/register_parent2.dart';

import '../../../../../core/ulits/const.dart';
import '../../custom_button.dart';
import '../../customtextfield.dart';
import '../../textsmall.dart';
import '../../title.dart';
import '../login/loginscreen.dart';


class RegisterParent extends StatelessWidget {
  const RegisterParent({super.key});

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
                    hintTex: ' Full Name in English',
                    labelTex: ' Full Name in English',
                    obs: false,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  CustomTextfield(
                    hintTex: ' Full Name in Arabic',
                    labelTex: ' Full Name in Arabic',
                    obs: false,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  CustomTextfield(
                    hintTex: ' Email address',
                    labelTex: ' Email address',
                    type: TextInputType.emailAddress,
                    obs: false,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  CustomTextfield(
                    inputformatter: [
                      FilteringTextInputFormatter.allow(
                        RegExp("[0-9]"),
                      ),
                      LengthLimitingTextInputFormatter(11)
                    ],
                    type: TextInputType.phone,
                    hintTex: 'Phone Number',
                    labelTex: 'Phone Number',
                    obs: false,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Center(
                      child: CustomButton(
                    tbutton: 'Continue',
                    wbutton: MediaQuery.of(context).size.width / 2,
                    hbutton: MediaQuery.of(context).size.height / 15,
                    colorbutton: kprimarycolor,
                    founbutton: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const RegisterParent2();
                      }));
                    },
                  )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextContent(
                          contant: "Have any account?",
                          textsmall: Colors.black45),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return const Login();
                          }));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: kprimarycolor,
                            fontSize: 15.sp,
                            decorationColor: kprimarycolor,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
