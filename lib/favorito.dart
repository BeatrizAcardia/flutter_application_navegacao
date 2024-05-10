import 'package:flutter/material.dart';

class favorito extends StatefulWidget {
    List<String> lista = [];
   favorito(this.lista,{super.key});
 
  @override
  State<favorito> createState() => _favoritoState();
}

class _favoritoState extends State<favorito> {


  String palavrasdaLista = "";

  @override
  Widget build(BuildContext context) {
    mostrar();
    return Scaffold(
    appBar: AppBar(title: Text("Favoritos"), backgroundColor: Colors.pink[100],),

    body: Center(child: Column(children: [
       Text(palavrasdaLista),
       ElevatedButton(onPressed: () {
        Navigator.pop(context);
       }, child: Text("Voltar"))
    ],)) 
   
    );
  }

  void mostrar(){
    for(int i = 0; i < widget.lista.length; i++){
      palavrasdaLista = palavrasdaLista + " " + widget.lista[i];
    }
  }
}