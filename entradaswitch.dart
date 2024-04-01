import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({super.key});

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _escolhaUsuario = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Transform(
              transform: Matrix4.identity()..scale(0.8),
              child: Switch(
                value: _escolhaUsuario,
                onChanged: (bool valor) {
                  setState(() {
                    _escolhaUsuario = valor;
                  });
                },
              ),
            ),
            Text("Receber notificações")
          ],
        ),
      ),
    );
  }
}
