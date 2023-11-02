import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';

import '../../domain/entities/task_entity.dart';

class TaskWidget extends StatefulWidget {
  final bool isCompleted;
  final ValueChanged<bool?> onToggleCheckbox;

  final Function(Task task, int taskIdex) callTaskEditPage;
  final Task task;
  final int taskIndex;

  const TaskWidget({
    Key? key,
    required this.isCompleted,
    required this.taskIndex,
    required this.task,
    required this.onToggleCheckbox,
    required this.callTaskEditPage,
  }) : super(key: key);

  @override
  _TaskWidgetState createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    isChecked = widget.isCompleted;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
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
                  margin: EdgeInsets.only(left: 17.w, right: 30.w),
                  child: CircleAvatar(
                    child: Theme(
                      data: ThemeData(
                        unselectedWidgetColor: Colors.transparent,
                        checkboxTheme: CheckboxThemeData(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                15.0), // Adjust the radius as needed
                          ),
                        ),
                      ),
                      child: Transform.scale(
                        scale: 2,
                        child: Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                              widget.onToggleCheckbox(value);
                            });
                          },
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                              (states) {
                            if (states.contains(MaterialState.selected)) {
                              return const Color(
                                  0xFF399649); // Change the checkbox color here
                            }
                            return Colors
                                .white; // Change the default color here
                          }),
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  widget.task.name,
                  style: TextStyle(
                    decoration: isChecked
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(80.w, 60.h),
              side: const BorderSide(
                  width: 1.0, color: Colors.black), // Set border color
              backgroundColor: Colors.white, // Set central color to white
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            onPressed: () {
              widget.callTaskEditPage(widget.task, widget.taskIndex);
            },
            child: Text(
              "Edit",
              style: TextStyle(
                fontSize: 16,
                color: const Color(0xFF3556AB), // Set text color
              ),
            ),
          ),
        ],
      ),
    );
  }
}
