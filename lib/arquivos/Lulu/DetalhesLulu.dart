import 'package:flutter/material.dart';

class DetalhesLulu extends StatelessWidget {
  const DetalhesLulu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text('Detalhes da Luluzinha',
            style: const TextStyle(color: Colors.purple, fontSize: 28)),
        Text(
            'Bandópolis, o lar de Lulu, era um lugar mágico e bizarro que desafiava qualquer lógica. Ali, o tempo era insignificante e as leis naturais do reino material não se aplicavam. Mas a Clareira era um lugar ainda mais estranho. Ela já existia muito antes dos yordles chegarem ao mundo e, provavelmente, foi a partir dela que Bandópolis nasceu. Um lugar de magia pura e primitiva, tão escondido que nenhum yordle jamais havia encontrado… até agora.')
      ],
    );
  }
}
