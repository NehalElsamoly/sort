import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.tbutton,
    required this.wbutton,
    required this.hbutton,
   required this.founbutton,
    required this.colorbutton,
  });

  final String tbutton;
  final double wbutton;
  final double hbutton;
  final Color colorbutton;
  final VoidCallback founbutton;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: ElevatedButton(
        onPressed: founbutton,
        style: ElevatedButton.styleFrom(
          backgroundColor: colorbutton,
          minimumSize: Size(wbutton, hbutton),
        ),
        child: Text(
          tbutton,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
