import 'package:flutter/material.dart';

void treino() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Lolre",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Guia atual dos campeões"),
            backgroundColor: Colors.amber,
          ),
          body: Container(
            child: Column(
              children: [
                Image(
                    image: AssetImage('assets/lulu.jpg'), fit: BoxFit.contain),
                TextButton(
                    child: Text(
                      "Lulu",
                      style: TextStyle(fontSize: 50),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {})
              ],
            ),
          ),
        )),
  );
}
