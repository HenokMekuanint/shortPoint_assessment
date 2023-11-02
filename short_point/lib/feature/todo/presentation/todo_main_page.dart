import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodoHomePage extends StatefulWidget {
  TodoHomePage({super.key});

  @override
  State<TodoHomePage> createState() => _TodoHomePageState();
}

class _TodoHomePageState extends State<TodoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Color(0XFF3556AB),
            width: double.infinity,
            height: 20.h,
            child: Row(
            children: [
              CircleAvatar(
                radius: 10.r,
                child: Image.asset("assets/images/ProfilePicture.png"),
              ),
              Column(
                children: [
                  Text("Hello,jhon"),
                  Text("What are your plans today")
                ],
              )
            ],
          ),
          ),

          Container(
            width: double.infinity,
            height: 20.h,
            color: Color(0XFF9EB031),
            child: Row(
              children: [
                Text("Go Pro (No Ads)"),
                Text("No fuss, no ads, for only \$1 a month")
              ],
            ),
          )
        ],
      ),
    );
  }
}
