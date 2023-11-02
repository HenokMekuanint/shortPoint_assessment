import 'package:flutter/material.dart';

class EditTask extends StatelessWidget {
  const EditTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),

        title: const Text('Edit Task'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Edit Task',
          style: TextStyle(fontSize: 24),
        ),
      ),);
  }
}
