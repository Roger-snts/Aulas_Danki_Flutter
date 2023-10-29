import 'package:flutter/material.dart';

import 'DetalhesLulu.dart';
import 'SobreLulu.dart';

class Lulu extends StatelessWidget {
  const Lulu({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Lulu'),
            bottom: TabBar(
              tabs: [Text('Sobre a Luluzinha'), Text('Falas deste ícone')],
            ),
          ),
          body: const TabBarView(
            children: [
              SobreLulu(),
              DetalhesLulu(),
            ],
          ),
        ));
  }
}
