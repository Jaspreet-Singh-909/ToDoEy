import 'package:flutter/material.dart';
import 'package:todoey_flutter/Widget/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/modals/task.dart';
import 'package:todoey_flutter/modals/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkBoxCallback: (checkBoxState) {
                taskData.updateTask(task);
              },
              deleteCheckBoxCallback: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
