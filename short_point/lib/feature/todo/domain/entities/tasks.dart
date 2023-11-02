import 'package:short_point/feature/todo/domain/entities/task_entity.dart';


class TasksController {
  List<Task> taskList = [];

  void addTask(Task newTask) {
    taskList.add(newTask);
  }

  void editTask(int index, Task updatedTask) {
    if (index >= 0 && index < taskList.length) {
      taskList[index] = updatedTask;
    }
  }
}