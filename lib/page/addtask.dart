import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_listview/service/tasklist.dart';

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
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Masukkan Task Baru",
              ),
              controller: etInput,
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<Tasklist>().addNewTask(etInput.text);
                      Navigator.pop(context);
                    },
                    child: const Text("Tambah Task Baru"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
