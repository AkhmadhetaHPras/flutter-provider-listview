import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_listview/service/tasklist.dart';

class AddTaskButton extends StatelessWidget {
  const AddTaskButton({
    Key? key,
    required this.etInput,
  }) : super(key: key);

  final TextEditingController etInput;

  @override
  Widget build(BuildContext context) {
    return Consumer<Tasklist>(
      builder: (
        final BuildContext context,
        final Tasklist tasklist,
        final Widget? child,
      ) {
        return ElevatedButton(
          onPressed: (tasklist.isValid)
              ? () {
                  context.read<Tasklist>().addNewTask(etInput.text);
                  Navigator.pop(context);
                }
              : null,
          child: const Text("Tambah Task Baru"),
        );
      },
    );
  }
}
