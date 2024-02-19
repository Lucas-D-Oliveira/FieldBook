
import 'package:field_teste/paginas/Perfil.dart';
import 'package:field_teste/paginas/Projetos.dart';
import 'package:field_teste/paginas/Coletando.dart';
import 'package:field_teste/paginas/Coletas.dart';
import 'package:field_teste/paginas/HomeP.dart';
import 'package:field_teste/paginas/LoginCad.dart';
import 'package:field_teste/paginas/Principal.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:field_teste/paginas/Banco.dart';


void main() {

  iniciarB();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginCad(),
  ));
}

