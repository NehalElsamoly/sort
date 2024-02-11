import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled14/features/presentation/widgets/auth/widgets/bottom_welcome_screen.dart';
import 'package:untitled14/features/presentation/widgets/auth/widgets/icons_welcome_screen.dart';
import 'package:untitled14/features/presentation/widgets/auth/widgets/top_welcome_screen.dart';

import '../../../../core/ulits/const.dart';
import '../title.dart';


class WelcomeStarting extends StatelessWidget {
  const WelcomeStarting({super.key});
  static String id = 'Welcome For Smart School';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  ///top///////
                  const TopFirstscreen(),
                  ////center/////
                  Positioned(
                    left: MediaQuery.of(context).size.width / 3.5,
                    top: MediaQuery.of(context).size.height / 2.5,
                    child: Titles(
                        title: welcom2,
                        fsize: 48.sp,
                        ttextcolor: const Color(0xFF3D7E80)),
                  ),

                  Positioned(
                    left: MediaQuery.of(context).size.width / 30,
                    bottom: MediaQuery.of(context).size.height / 7.5,
                    child: Transform(
                        transform: Matrix4.identity()
                          ..translate(5.0, 5.0)
                          ..rotateZ(-0.2),
                        child: IconsfirstScreen(
                          iconAsset: loginIc,
                          nIcon: login,
                          start: () {},
                        )),
                  ),
                  Positioned(
                      left: MediaQuery.of(context).size.width / 2.6,
                      bottom: MediaQuery.of(context).size.height / 6.3,
                      child: IconsfirstScreen(
                        iconAsset: registerIc,
                        nIcon: register,
                        start: () {},
                      )),
                  Positioned(
                    right: MediaQuery.of(context).size.width / 30,
                    bottom: MediaQuery.of(context).size.height / 6.4,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(5.0, 5.0)
                        ..rotateZ(0.2),
                      child: IconsfirstScreen(
                          iconAsset: websiteIc, nIcon: website),
                    ),
                  ),

                  ///////bottom////
                  const BottomFirstScreen()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
