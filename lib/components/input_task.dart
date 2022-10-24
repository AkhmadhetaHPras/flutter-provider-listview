import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_listview/service/tasklist.dart';

class InputTask extends StatelessWidget {
  const InputTask({
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
        return TextField(
          decoration: InputDecoration(
            hintText: "Masukkan Task Baru",
            errorText: tasklist.valid.error,
          ),
          controller: etInput,
          onChanged: (String value) {
            tasklist.changevalid(value);
          },
        );
      },
    );
  }
}
