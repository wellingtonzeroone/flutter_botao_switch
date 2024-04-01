import 'package:flutter/material.dart';

class EntradaSwitch2 extends StatefulWidget {
  const EntradaSwitch2({super.key});

  @override
  State<EntradaSwitch2> createState() => _EntradaSwitch2State();
}

class _EntradaSwitch2State extends State<EntradaSwitch2> {

  bool _escolhaUsuario = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              width: 30,
              height:20,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Switch(
                  value: _escolhaUsuario,
                  onChanged: (bool valor) {
                    setState(() {
                      _escolhaUsuario = valor;
                    });
                  },
                ),
              ),
            ),
            Text("Receber notificações"),
          ],
        ),
      ),
    );
  }
}