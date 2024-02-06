
import 'package:field_teste/paginas/HomeP.dart';
import 'package:field_teste/paginas/Recados.dart';
import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int indice = 0;
  Color iconeCor = Color(0xFF57636C);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Bem Vindo Lucas",
            style: TextStyle(color: Colors.white)
        ),
        flexibleSpace: Container(
          padding: EdgeInsets.only(bottom: 8,top: 20,right: 15),
          alignment: Alignment.bottomRight,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Center(
                child: Image.asset("imagens/perfil.png")
            ),
          ),
        ),
      ),
      body: IndexedStack(
        index: indice,
        children: <Widget>[
          HomeP(),
          Recados(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        currentIndex: indice,
        fixedColor: Colors.white,
        unselectedItemColor: iconeCor,
        type: BottomNavigationBarType.fixed,
        onTap: (indiceB) {
          setState(() {
            indice = indiceB;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ("Inicio"),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: ("Recados"),
          ),
        ],
      ),
    );
  }
}
