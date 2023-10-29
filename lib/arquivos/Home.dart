import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var child2 = null;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Guia atual dos campeões do joguinho"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            Container(
              child: TextButton(
                onPressed: () {},
                child: child2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
