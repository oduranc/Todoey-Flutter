import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final void Function(dynamic) addTaskCallback;

  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;

    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
              ),
            ),
            TextField(
              autofocus: true,
              style: const TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
              cursorColor: Colors.lightBlueAccent,
              decoration: const InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                    width: 4,
                  ),
                ),
              ),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                addTaskCallback(newTaskTitle);
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlueAccent),
              ),
              child: const Text(
                'Add',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
