import 'package:flutter/material.dart';

class Pessoa extends StatefulWidget {
  String frase = "";
  Pessoa(this.frase, {super.key});
  

  @override
  State<Pessoa> createState() => _PessoaState();
}


class _PessoaState extends State<Pessoa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pessoa"), backgroundColor: Colors.purple[100],),

      body: Text(widget.frase),
    );
  }
}