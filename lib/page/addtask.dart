import 'package:flutter/material.dart';
import 'package:provider_listview/components/add_task_button.dart';
import 'package:provider_listview/components/input_task.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController etInput = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Task Baru"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InputTask(etInput: etInput),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: AddTaskButton(etInput: etInput),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
