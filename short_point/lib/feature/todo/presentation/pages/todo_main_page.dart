import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:short_point/feature/todo/presentation/widgets/task_widget.dart';

import 'add_task.dart';

class TodoHomePage extends StatefulWidget {
  TodoHomePage({super.key});

  @override
  State<TodoHomePage> createState() => _TodoHomePageState();
}

class _TodoHomePageState extends State<TodoHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: ClipOval(
          child: FloatingActionButton(
            backgroundColor: Color(0XFF3556AB),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AddTask();
              }));
            },
            child: const Icon(Icons.add, color: Colors.white),
          ),
        ),
        backgroundColor: Color(0XFFF3F3F3),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Color(0XFF3556AB),
              width: double.infinity,
              height: 130.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 32.w, top: 19.h),
                    child: CircleAvatar(
                      radius: 25.r,
                      child: Image.asset(
                        "asset/images/ProfilePicture.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24.h, left: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello,jhon",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                          fontSize: 16.sp
                        ),
                        ),
                        Container(
                          width: 220.w,
                          height: 65.h,
                          child: Text("What are your plans today ?",
                          style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                          fontSize: 18.sp
                        ),
                          
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 130.h,
              color: Color(0XFF9EB031),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25.w, top: 36.h, right: 28.w),
                    child: Image.asset(
                      "asset/images/throphy.png",
                      // width: 53.w,
                      // height: 40.h,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 36.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Go Pro (No Ads)",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF071D55),
                          fontSize: 20.sp
                        ),
                        ),
                        Container(
                          width: 190.w,
                          height: 46.h,
                          child: Text("No fuss, no ads, for only \$1 a month",
                          style: TextStyle(
                          color: Color(0XFF0D2972),
                          fontSize: 12.sp
                        ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15.w),
                    width: 66.w,
                    height: 71.h,
                    color: Color(0XFF071D55),
                    child: Center(
                      child: Text(
                        "\$1",
                        style: TextStyle(color: Color(0XFFF2C94C)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 14,
                  itemBuilder: (context, index) {
                    return TaskWidget(
                      taskName: "asd",
                      isCompleted: true,
                      onToggleCheckbox: (bool? newValue) {
                        // Add the logic to handle the toggling of the checkbox here
                      },
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
