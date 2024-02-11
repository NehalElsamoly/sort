import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled14/features/presentation/widgets/auth/register/register_parent3.dart';

import '../../../../../core/ulits/const.dart';
import '../../custom_button.dart';
import '../../datepicker.dart';
import '../../image_picker.dart';
import '../../textsmall.dart';
import '../../title.dart';
import '../widgets/customtextfield.dart';


class RegisterParent2 extends StatelessWidget {
  const RegisterParent2({super.key});

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
                        "Please enter your  Address and National ID  and photo of National ID  and date of birth  for your account",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  CustomTextfield(
                    hintTex: 'The Address',
                    labelTex: 'The Address',
                    obs: false,
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
                  Center(
                      child: CustomButton(
                    tbutton: 'Continue',
                    wbutton: MediaQuery.of(context).size.width / 2,
                    hbutton: MediaQuery.of(context).size.height / 15,
                    colorbutton: kprimarycolor,
                    founbutton: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterParent3()));
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
