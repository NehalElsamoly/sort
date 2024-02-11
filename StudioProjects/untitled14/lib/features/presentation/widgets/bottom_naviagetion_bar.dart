import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/ulits/const.dart';

class BottomNaviatonBar extends StatelessWidget {
  const BottomNaviatonBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              home,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(child),
          ),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(categorey),
          ),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(notification),
          ),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(setting),
          )
        ],
      ),
    );
  }
}
