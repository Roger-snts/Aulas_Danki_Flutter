import "dart:html";

import "package:flutter/material.dart";

class Texto extends StatefulWidget {
  const Texto({Key? key}) : super(key: key);

  @override
  State<Texto> createState() => _TextoState();
}

class _TextoState extends State<Texto> {
  TextEditingController numero = TextEditingController();
  TextEditingController nome = TextEditingController();
  TextEditingController senha = TextEditingController();
  var name, number, key;

  void atribuirVariaveis() {
    setState(() {
      name = nome.text;
      number = int.parse(numero.text);
      key = senha.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Números, letras e senha!"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("First", style: TextStyle(fontSize: 22)),
            TextField(
              decoration: InputDecoration(
                labelText: "Numero 1",
              ),
              style: TextStyle(backgroundColor: Colors.white54),
              maxLength: 10,
              keyboardType: TextInputType.number,
              controller: numero,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Letras",
              ),
              style: TextStyle(backgroundColor: Colors.white54),
              maxLength: 50,
              controller: nome,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Senha",
              ),
              style: TextStyle(backgroundColor: Colors.white54),
              maxLength: 12,
              obscureText: true,
              obscuringCharacter: ".",
              controller: senha,
            ),
            SizedBox(height: 20),
            ElevatedButton(
                child: Text("Atribuir"), onPressed: () => atribuirVariaveis()),
            Text("Numero: $number"),
            Text("Nome: $name"),
            Text("Senha: $key"),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
