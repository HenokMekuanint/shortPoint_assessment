import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'feature/todo/presentation/pages/todo_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 844),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        showSemanticsDebugger: false,
        title: 'Todo App',
        theme: ThemeData(
          
          useMaterial3: true,
        ),
        home: TodoHomePage(),
      ),
    );
  }
}
