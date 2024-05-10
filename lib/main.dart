// ignore_for_file: prefer_const_constructors, equal_keys_in_map

import 'package:flutter/material.dart';
import 'package:flutter_application_navegacao/favorito.dart';
import 'package:flutter_application_navegacao/pessoal.dart';
import 'package:flutter_application_navegacao/principal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //tira a faixa feia vermelha debug
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     // home: Myprincipal(),

     routes: { //mapear as páginas
        '/':(context) => Myprincipal(),
        '/pessoa':(context) => Pessoa("Tem gente que é um pacote completo. Além de lixo, é um saco"),
        '/favorito':(context) => favorito(["blabla"])
     },
    );
  }
}