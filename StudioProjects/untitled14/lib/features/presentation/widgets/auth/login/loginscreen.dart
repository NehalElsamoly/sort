import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/ulits/const.dart';
import '../../custom_button.dart';
import '../../customtextfield.dart';
import '../../textsmall.dart';
import '../../title.dart';
import '../register/register_parent.dart';
import 'forget_password.dart';
import 'loginscreen.dart';
import 'massage.dart';


class Login extends StatefulWidget {
  const Login({super.key});
  static String id = 'login page';
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _emailError = '';
  // String _passwordError = '';
  String? _state;
  // void _login() {
  //   if (_emailController.text == 'user@example.com' &&
  //       _passwordController.text == 'password' &&
  //       _state != null) {
  //     // Successful login
  //     _emailError = '';
  //     //  _passwordError = '';
  //     _state = '';
  //     // Navigate to the next screen
  //   } else {
  //     // Failed login
  //     _emailError = 'Invalid email address';
  //     // _passwordError = 'Invalid password';
  //     _state = 'choose state';
  //   }
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 15,
                  ),
                  SvgPicture.asset(
                    logoIc,
                    height: MediaQuery.of(context).size.height / 8,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Titles(
                    title: 'Login',
                    fsize: 30.sp,
                    ttextcolor: const Color(0xFF3D7E80),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  CustomTextfield(
                    hintTex: " Email",
                    labelTex: " Email",
                    controller: _emailController,
                    type: TextInputType.emailAddress,
                    preicon: const Icon(Icons.mail),
                    obs: false,
                  ),
                  Text(
                    _emailError,
                    style: const TextStyle(color: Colors.red),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextfield(
                    hintTex: " Password",
                    labelTex: " password",
                    controller: _passwordController,
                    preicon: const Icon(Icons.lock),
                    obs: true,
                  ),
                  // Text(
                  //   _passwordError,
                  //   style: const TextStyle(color: Colors.red),
                  // ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 25,
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
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  CustomButton(
                      tbutton: "login",
                      wbutton: MediaQuery.of(context).size.width / 2.2,
                      hbutton: MediaQuery.of(context).size.height / 14,
                      colorbutton: kprimarycolor,
                      founbutton: () {
                        //_login();
                        
                      }),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 60,
                  ),
                  TextContent(
                    textsmall: textSmall,
                    contant: "forget your password?",
                    nav: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgetPassword()));
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextContent(
                          contant: "Haven't any account?",
                          textsmall: Colors.black45),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterParent()));
                        },
                        child: Text(
                          "Create account",
                          style: TextStyle(
                            color: kprimarycolor,
                            fontSize: 12.sp,
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
