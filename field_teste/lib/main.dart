
import 'package:field_teste/paginas/Atividades.dart';
import 'package:field_teste/paginas/Coletando.dart';
import 'package:field_teste/paginas/Coletas.dart';
import 'package:field_teste/paginas/Grupos.dart';
import 'package:field_teste/paginas/HomeP.dart';
import 'package:field_teste/paginas/Login.dart';
import 'package:field_teste/paginas/LoginCad.dart';
import 'package:field_teste/paginas/Principal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginCad(),
    );
  }
}
