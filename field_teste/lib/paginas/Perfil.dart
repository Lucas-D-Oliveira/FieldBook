import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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

              SizedBox(width: 95),

              Text("Perfil", style: TextStyle(color: Colors.white, fontSize: 30)),

              SizedBox(width: 95),

              IconButton(
                onPressed: () {

                },
                icon: Icon(Icons.edit, size: 35, color: Colors.white),
              ),
            ],
          ),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Alinhamento vertical central
          children: [

            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(''),
            ),

            SizedBox(height: 20),

            Text(
              'Seu zé da padaria da esquina',
              style: TextStyle(
                fontSize: 25,
              ),
            ),

            SizedBox(height: 10),

            Text(
              'Pesquisador',
              style: TextStyle(
                fontSize: 25,
              ),
            ),

            SizedBox(height: 10),

            Text(
              'Agrometeorologia',
              style: TextStyle(
                fontSize: 25,
              ),
            ),

            SizedBox(height: 10),

            Text(
              'Londrina - PR',
              style: TextStyle(
                fontSize: 25,
              ),
            ),

            SizedBox(height: 60),

            ElevatedButton(
                onPressed: (){},
                child: Text('Deslogar', style: TextStyle(fontSize: 20, color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[400],
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
