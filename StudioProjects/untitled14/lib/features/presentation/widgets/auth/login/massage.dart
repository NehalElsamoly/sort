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
import 'loginscreen.dart';
import 'massage.dart';


class Massage extends StatelessWidget {
  const Massage({super.key,this.title,this.contant,this.massageic});
  static String id = 'Massage page';
  final String? massageic ;
  final String? title  ;
  final String? contant  ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlertDialog(
        backgroundColor: Colors.white,
        title: SvgPicture.asset(
          massageic!,
          height: MediaQuery.of(context).size.height / 10,
        ),
        // titlePadding: const EdgeInsets.only(top: 50),
        content: SingleChildScrollView(
          child: ListBody(children: [
            Center(
              child: Titles(
                title: title!,
                fsize: 30.sp,
                ttextcolor: const Color(0xff777A95),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 40,
              ),
              child: TextContent(contant: contant!, textalign: TextAlign.center),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 5),
              child: CustomButton(
                tbutton: "Login",
                hbutton: MediaQuery.of(context).size.height / 15,
                wbutton: MediaQuery.of(context).size.width / 20,
                colorbutton: kprimarycolor,
                founbutton: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            )
          ]),
        ),
        contentPadding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height / 40),
      ),
    );
  }
}
