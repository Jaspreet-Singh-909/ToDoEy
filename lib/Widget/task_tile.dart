import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;
  final Function deleteCheckBoxCallback;
  TaskTile({this.isChecked, this.taskTitle,this.checkBoxCallback,this.deleteCheckBoxCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteCheckBoxCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}

// class TaskCheckBox extends StatelessWidget {
//   TaskCheckBox({this.checkBoxState, this.toggleCheckBoxState});
//   final bool checkBoxState;
//   final Function toggleCheckBoxState;
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
