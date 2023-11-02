import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaskWidget extends StatefulWidget {
  final String taskName;
  final bool isCompleted;
  final ValueChanged<bool?> onToggleCheckbox;

  const TaskWidget({
    Key? key,
    required this.taskName,
    required this.isCompleted,
    required this.onToggleCheckbox,
  }) : super(key: key);

  @override
  _TaskWidgetState createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w,vertical: 20.h),
      padding: EdgeInsets.only(right: 15.w),
      decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8.0),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 3,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  ),
      height: 90.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            
            width: 250.w,
            child: Row(
              
              children: [
                Container(
            margin: EdgeInsets.only(left: 17.w,right: 30.w),
            child: Theme(
                  data: ThemeData(
            unselectedWidgetColor: Colors.transparent,
            checkboxTheme: CheckboxThemeData(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
              ),
            ),
            
                  ),
                  child: Transform.scale(
                    scale: 2,
                    child: Checkbox(
                              
                              value: widget.isCompleted,
                              onChanged: widget.onToggleCheckbox,
                              fillColor: MaterialStateProperty.resolveWith<Color>((states) {
      if (states.contains(MaterialState.selected)) {
        return const Color(0xFF399649); // Change the checkbox color here
      }
      return Colors.black; // Change the default color here
    })
                              
                    ),
                  ),
                ),
          ),



      Text(
        widget.taskName,
        style: TextStyle(
         decoration: widget.isCompleted ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
              ],
            ),
          ),

ElevatedButton(
  style: ElevatedButton.styleFrom(
    fixedSize: Size(80.w, 60.h),
    side: const BorderSide(width: 1.0, color: Colors.black), // Set border color
    backgroundColor: Colors.white, // Set central color to white
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6.r),
    ),
  ),
  onPressed: () {
    // Add your onPressed logic here
  },
  child: Text(
    "Edit",
    style: TextStyle(
      fontSize: 16.sp,
      color: const Color(0xFF3556AB), // Set text color
    ),
  ),
),

        ],
      ),
    );
  }
}


