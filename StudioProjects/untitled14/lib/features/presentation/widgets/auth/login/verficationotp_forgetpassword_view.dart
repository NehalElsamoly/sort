import 'package:flutter/material.dart';
import 'package:untitled14/features/presentation/widgets/auth/login/resetpassword.dart';

import '../../verficationotp.dart';


class VerficationOTPForgetPassword extends StatelessWidget {
  const VerficationOTPForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: VerficationOTP(
      confirm: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResetPassword()));
      },
    ));
  }
}
