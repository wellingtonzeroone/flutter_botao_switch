import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: const SwitchExample(),
    ),
  );
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light0 = true;
  bool light1 = true;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Switch(
            thumbIcon: thumbIcon,
            value: light0,
            onChanged: (bool value) {
              setState(() {
                light0 = value;
              });
            },
          ),
          Switch(
            thumbIcon: thumbIcon,
            value: light1,
            onChanged: (bool value) {
              setState(() {
                light1 = value;
              });
            },
            thumbColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return Colors.green; // Cor verde para o estado "check"
              }
              return Colors.grey; // Cor cinza para o estado "close"
            }),
          ),
        ],
      ),
    );
  }
}
