import 'package:flutter/material.dart';

class SobreLulu extends StatelessWidget {
  const SobreLulu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image(
          image: AssetImage('assets/lulu.png'),
          width: 250,
          height: 200,
        )
      ],
    );
  }
}
