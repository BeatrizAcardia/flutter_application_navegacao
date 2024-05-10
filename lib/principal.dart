import 'package:flutter/material.dart';
import 'package:flutter_application_navegacao/favorito.dart';
import 'package:flutter_application_navegacao/pessoal.dart';

class Myprincipal extends StatefulWidget {

  Myprincipal({super.key});

  @override
  State<Myprincipal> createState() => _MyprincipalState();
}

class _MyprincipalState extends State<Myprincipal> {
  List<String> lista = ["Não namore alguém que te dá mais trabalho que o seu cabelo", "\nExpectativa é igual paçoca. Do nada, esfarela tudo!", "\nMatar um leão por dia é fácil. Difícil é desviar das antas", "\nO problema dos erros é que às vezes eles beijam bem!"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ex navegação"), centerTitle: true,
      backgroundColor: Colors.blue[100], 
      actions: [
        IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: ((context) => Pessoa("Seja interessante, não interesseiro"))));
        }, icon: Icon(Icons.person, color: Colors.black,)),

        IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (((context) => favorito(lista))))); 
        }, icon: Icon(Icons.favorite, color: Colors.red,))
      ],),

      body: SingleChildScrollView(child: Column(children: [

        SizedBox(height: 20,),

        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
           ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/pessoa');
          setState(() {});
        }, child: Text("Pessoa")),

        SizedBox(width: 20),

        ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, '/favorito');
        }, child: Text("Favorito"))
        ],)
      ],)),
    );
  }
}