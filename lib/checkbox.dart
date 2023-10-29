import 'dart:html';

import 'package:flutter/material.dart';

class Checbox extends StatefulWidget {
  const Checbox({Key? key}) : super(key: key);

  @override
  State<Checbox> createState() => _ChecboxState();
}

class _ChecboxState extends State<Checbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IFOOD Gringo"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Column(
          children: [
            CheckboxListTile(
              title: Text("Carne de Sol"),
              subtitle: Text("Criada a partir das particulas das estrelas"),
              secondary: Icon(Icons.telegram_outlined),
              value: true,
              onChanged: (value) => {},
            ),
            CheckboxListTile(
              title: Text("Peixe cru"),
              subtitle: Text("Alguns o conhecem como 'sushi'"),
              secondary: Icon(Icons.safety_check),
              value: false,
              onChanged: (value) => {},
            ),
            CheckboxListTile(
              title: Text("Carne da Lua"),
              subtitle: Text("Criada através de colisões espaciais"),
              secondary: Icon(Icons.cruelty_free),
              value: false,
              onChanged: (value) => {},
            ),
            CheckboxListTile(
              title: Text("Frango frito"),
              subtitle: Text("Somente o peito para você ficar monstrão!"),
              secondary: Icon(Icons.mediation),
              value: false,
              onChanged: (value) => {},
            ),
            TextField(),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Comprar", style: TextStyle(fontSize: 22)),
              onPressed: () => {},
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
            )
          ],
        ),
      ),
    );
  }
}
