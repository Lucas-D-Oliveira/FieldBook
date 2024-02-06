import 'package:flutter/material.dart';

class DialogUtils {
  static void mostrarTextFieldDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pesquisar'),
          content: TextField(
            decoration: InputDecoration(
              hintText: 'Digite aqui...',
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Fechar'),
            ),
          ],
        );
      },
    );
  }
}

class Recados extends StatefulWidget {
  const Recados({Key? key}) : super(key: key);

  @override
  State<Recados> createState() => _RecadosState();
}

class _RecadosState extends State<Recados> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            ListView(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
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
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(13),
                                  topRight: Radius.circular(13),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 8, top: 8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                              ),
                              child: Center(
                                child: Column(
                                  children: [
                                    Text(
                                      "Pesquisador: xxxxxxx",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "Projeto: xxxxxxx",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "Atividade: xxxxxxx",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "xx/xx/xxxx",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 10,
              child: FloatingActionButton(
                backgroundColor: Colors.green,
                onPressed: () {
                  DialogUtils.mostrarTextFieldDialog(context);
                },
                child: Icon(Icons.search, color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
