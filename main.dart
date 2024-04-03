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
  String texto1 = "------";
  String texto2 = "------";

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
                if (light0 == true) {
                  texto1 = "Switch1 Está ativado";
                } else {
                  texto1 = "Switch1 Está desativado";
                }
              });
            },
          ),
          Switch(
            thumbIcon: thumbIcon,
            value: light1,
            onChanged: (bool value) {
              setState(() {
                light1 = value;
                if (light1 == true) {
                  texto2 = "Switch2 Está ativado";
                } else {
                  texto2 = "Switch2 Está desativado";
                }
              });
            },
            thumbColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return Colors.green; // Cor verde para o estado "check"
              }
              return Colors.grey;
            }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text(
              "${texto1}",
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text(
              "${texto2}",
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
