import 'package:flutter/material.dart';
import 'package:untitled14/features/presentation/widgets/auth/register/register_child.dart';

import '../../verficationotp.dart';


class VerficationOTPEmail extends StatelessWidget {
  const VerficationOTPEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VerficationOTP(confirm: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => RegisterChild()));
      }),
    );
  }
}
