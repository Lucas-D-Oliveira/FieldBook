import 'package:field_teste/paginas/Coletando.dart';
import 'package:flutter/material.dart';
import 'Recados.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:field_teste/paginas/Coletando.dart';


class Projeto {
  final String nome;
  final String atividade;
  final String pesquisador;
  final String cidade;
  final String local;

  Projeto({
    required this.nome,
    required this.atividade,
    required this.pesquisador,
    required this.cidade,
    required this.local,
  });

  //
  factory Projeto.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return Projeto(
      nome: data['nomeP'] ?? '',
      atividade: data['atividade'] ?? '',
      pesquisador: data['pesquisador'] ?? '',
      cidade: data['cidade'] ?? '',
      local: data['local'] ?? '',
    );
  }
}

class Projetos extends StatefulWidget {
  const Projetos({Key? key}) : super(key: key);

  @override
  State<Projetos> createState() => _ProjetosState();
}

class _ProjetosState extends State<Projetos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        flexibleSpace: Container(
          padding: EdgeInsets.only(bottom: 0, top: 30, right: 13, left: 13),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back, size: 35, color: Colors.white),
              ),
              SizedBox(width: 75),
              Text("Projetos", style: TextStyle(color: Colors.white, fontSize: 30)),
              SizedBox(width: 75),
              IconButton(
                onPressed: () {
                  DialogUtils.mostrarTextFieldDialog(context);
                },
                icon: Icon(Icons.search, size: 35, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Projetos').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          List<Projeto> projetos = snapshot.data!.docs.map((doc) => Projeto.fromFirestore(doc)).toList();
          return ListView.builder(
            itemCount: projetos.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Coletando()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10, right: 10, left: 10),
                  width: double.infinity,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    ),
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          projetos[index].nome,
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ),
                      ),
                      Center(
                        child: Text(
                          projetos[index].atividade,
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      SizedBox(height: 8),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Pesq. Responsável: ${projetos[index].pesquisador}",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Município: ${projetos[index].cidade}",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Local: ${projetos[index].local}",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
