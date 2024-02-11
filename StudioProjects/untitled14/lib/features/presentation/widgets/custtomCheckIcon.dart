import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      radius: 50,
      backgroundColor: Color(0xFFD9D9D9),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: HexColor("#3D7E80"),
        child: Icon(
          Icons.check,
          size: 50,
          color:Colors.white
        ),
      ),
    );
  }
}