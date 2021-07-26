import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      //O Scaffold é um esqueleto uma base para começar a home
      home: Scaffold(
        body: ListaTransferencias(),
        appBar: AppBar(title: Text('Transferências'),
        backgroundColor: Colors.deepPurple,),
        floatingActionButton: FloatingActionButton(
          onPressed: () {  },
          backgroundColor: Colors.deepPurple,
          //Tem seus proprios icons
          child: Icon(Icons.add),
        ),
      ),
    )
  );
}

class ListaTransferencias extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Column(
      children: [
        ItemTransferencias(Transferencia(100.50, 1000)),
        ItemTransferencias(Transferencia(40.50, 4000)),
        ItemTransferencias(Transferencia(800.50, 6000)),
        ItemTransferencias(Transferencia(140.50, 1000)),
      ],
    );
  }
}

class ItemTransferencias extends StatelessWidget{

  final Transferencia _transferencia;

  ItemTransferencias(this._transferencia);

  @override
  Widget build(BuildContext context) {
   return Card(
       child: ListTile(
         leading: Icon(Icons.monetization_on),
         title: Text(_transferencia.valor.toString()),
         subtitle: Text(_transferencia.numConta.toString()),
       )
   );
  }
}

class Transferencia {
  final double valor;
  final int numConta;

  Transferencia(this.valor, this.numConta);
}

