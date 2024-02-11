import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/ulits/const.dart';
import '../../custom_button.dart';
import '../../textsmall.dart';
import '../../title.dart';
import '../widgets/customtextfield.dart';


class Register extends StatefulWidget {
  const Register({super.key});
  static String id = 'Register Page';
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  String _username = '';
  String _firstname = '';
  String _lastname = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1),
                child: SvgPicture.asset(
                  logoIc,
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1),
                child: Titles(
                  title: 'Register',
                  fsize: 30.sp,
                  ttextcolor: kprimarycolor,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1),
                child: TextContent(
                  contant:
                      "Please enter your name and pick a username for your account",
                  textsmall: Colors.black,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      CustomTextfield(
                        controller: firstNameController,
                        hintTex: 'First Name',
                        obs: false,
                       
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text(
                        _firstname,
                        style: const TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CustomTextfield(
                          controller: lastNameController,
                          hintTex: 'Last Name',
                          obs: false,
                          
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Text(
                          _lastname,
                          style: const TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              CustomTextfield(
                controller: usernameController,
                hintTex: 'Username',
                obs: false,
                
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                _username,
                style: const TextStyle(color: Colors.red),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Center(
                child: CustomButton(
                  tbutton: 'Continue',
                  wbutton: MediaQuery.of(context).size.width * 0.5,
                  hbutton: MediaQuery.of(context).size.height * 0.08,
                  colorbutton: kprimarycolor,
                  founbutton: () {
                    if (firstNameController.text != '' &&
                        lastNameController.text != '' &&
                        usernameController.text != '') {
                      // Form is valid, perform registration logic here

                      // Print or use the data as needed

                      // Clear previous validation message
                      setState(() {
                        _username = '';
                        _firstname = '';
                        _lastname = '';
                      });
                    } else {
                      setState(() {
                        _username = 'Please enter your Username';
                        _firstname = 'Please enter your firstname';
                        _lastname = 'Please enter your lastname';
                      }); // Form is invalid, update validation message
                    }
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextContent(
                    contant: "Have an account?",
                    textsmall: const Color(0xffC3BFBF),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      " Login",
                      style: TextStyle(
                        color: kprimarycolor,
                        fontSize: 16,
                        decorationColor: kprimarycolor,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
