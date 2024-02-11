import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 
class TextContent extends StatelessWidget {
 const TextContent(
      {super.key,
      required this.contant,
      this.nav,
      this.textsmall,
      this.textalign});

  final String contant;
  final TextAlign? textalign;
  final VoidCallback? nav;
 final Color? textsmall  ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nav,
      child: Text(
        contant,
        textAlign: textalign,
        style: TextStyle(
          color: textsmall,
          fontSize: 16.sp,
        ),
      ),
    );
  }
}
