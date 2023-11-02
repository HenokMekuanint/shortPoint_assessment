import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:short_point/feature/todo/domain/entities/task_entity.dart';
import 'package:short_point/feature/todo/domain/entities/tasks.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/custom_elevated_button.dart';

class EditTask extends StatefulWidget {
  final int taskId;
  final Task task;
  final Function(Task task, int taskId) onTaskEdited;

  EditTask(
      {super.key,
      required this.taskId,
      required this.task,
      required this.onTaskEdited});

  @override
  State<EditTask> createState() => _EditTaskState();
}

class _EditTaskState extends State<EditTask> {
  TextEditingController _taskNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _taskNameController.text = widget.task.name;
  }

  @override
  Widget build(BuildContext context) {
    void handleOnPressed() {
      Task editedTask = Task(
          id: widget.task.id,
          name: _taskNameController.text,
          isCompleted: widget.task.isCompleted);

      widget.onTaskEdited(editedTask, widget.taskId);

      Navigator.pop(context);
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F3),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: const CustomAppBar(
            title: "Edit Task",
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Text(
                    'Task Name',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    controller: _taskNameController,
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF0D2972)),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(left: 15.w, top: 15.h, bottom: 15.h),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.r),
                        borderSide: const BorderSide(
                          color: Color(0xFFCBCBCB),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.r),
                        borderSide: const BorderSide(
                          color: Color(0xFFCBCBCB),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            CustomElevatedButton(
              onPressed: handleOnPressed,
            )
          ],
        ),
      ),
    );
  }
}
