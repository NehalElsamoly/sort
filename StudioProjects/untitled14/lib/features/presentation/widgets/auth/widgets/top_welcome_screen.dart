import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/ulits/const.dart';
import '../../title.dart';


class TopFirstscreen extends StatelessWidget {
  const TopFirstscreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            left: MediaQuery.of(context).size.width / 2.5,
            top: MediaQuery.of(context).size.height / 15,
            child: SvgPicture.asset(
              logoIc,
              height: MediaQuery.of(context).size.height / 8,
            )),
        Positioned(
            right: MediaQuery.of(context).size.width / 15,
            top: MediaQuery.of(context).size.height / 20,
            child: SvgPicture.asset(
              translateIc,
              height: MediaQuery.of(context).size.height / 22,
            )),
        Positioned(
            left: MediaQuery.of(context).size.width / 6.2,
            top: MediaQuery.of(context).size.height / 4.9,
            child: Icon(
              Icons.handshake,
              color: kprimarycolor,
              size: 40.sp,
            )),
        Positioned(
          left: MediaQuery.of(context).size.width / 4,
          top: MediaQuery.of(context).size.height / 5.2,
          child: Titles(
            title: welcom1,
            fsize: 35.sp,
            ttextcolor: kprimarycolor,
          ),
        ),
        Positioned(
          left: -MediaQuery.of(context).size.width / 10,
          top: -MediaQuery.of(context).size.height / 4.9,
          child: Container(
            width: MediaQuery.of(context).size.width * 1.25,
            height: MediaQuery.of(context).size.height / 1.9,
            decoration: ShapeDecoration(
              color: const Color(0x00D9D9D9),
              shape: OvalBorder(
                side: BorderSide(
                    width: MediaQuery.of(context).size.width / 90,
                    color: const Color(0xFF52AEB0)),
              ),
            ),
          ),
        ),
      ],
    );
    //Stack(
    //   children: [
    //     Positioned(
    //         left: 150,
    //         top: 60,
    //         child: SvgPicture.asset(
    //           logoIc,
    //           height: 120,
    //           width: 120,
    //         )),
    //     Positioned(
    //         left: 350,
    //         top: 20,
    //         child: SvgPicture.asset(
    //           translateIc,
    //         )),
    //     const Positioned(
    //         left: 90,
    //         top: 230,
    //         child: Icon(
    //           Icons.handshake,
    //           color: kprimarycolor,
    //           size: 40,
    //         )),
    //     Positioned(
    //         left: 130,
    //         top: 225,
    //         child: Titles(
    //           title: welcom1,
    //           fsize: 35,
    //           ttextcolor:const Color(0xFF3D7E80),
    //         )),
    //     Positioned(
    //       left: -90,
    //       top: -172,
    //       child: Container(
    //         width: MediaQuery.of(context).size.width * 1.2,
    //         height: MediaQuery.of(context).size.height / 1.8,
    //         decoration: const ShapeDecoration(
    //           color: Color(0x00D9D9D9),
    //           shape: OvalBorder(
    //             side: BorderSide(width: 5, color: Color(0xFF52AEB0)),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}
