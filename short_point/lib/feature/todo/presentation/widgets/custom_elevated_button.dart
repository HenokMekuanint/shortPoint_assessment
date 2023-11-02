import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    super.key,
    required this.onPressed,
  });

  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 40.h),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          side: const BorderSide(width: 1.0, color: Color(0xFF0D2972)),
          backgroundColor: const Color(0xFF3556AB),
          fixedSize: Size(370.w, 60.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.r),
          ),
        ),
        child: Text("Done",
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontFamily: 'Roboto')),
      ),
    );
  }
}
