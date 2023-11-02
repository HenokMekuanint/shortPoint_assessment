import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF3556AB),
      leading: BackButton(
        // navigate to previous screen
        onPressed: Navigator.of(context).pop,

        color: Colors.white,
        style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll(
            Size(16.w, 16.h),
          ),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 24.sp, fontFamily: 'Roboto'),
      ),
      centerTitle: true,
    );
  }
}
