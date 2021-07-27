import 'package:flutter/material.dart';

import 'screens/lista.dart';

void main() {
  runApp(BytebankApp());
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //O Scaffold é um esqueleto uma base para começar a home
        home: ListaTransferencias(),
    );
  }
}



