import 'package:flutter/material.dart';

import 'arquivos/Lulu/DetalhesLulu.dart';

// Será a tela de Home, mas ela estava com o tipo estático, o que não permitia que os valores mudassem
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() =>
      _HomeState(); // Esse método carrega as variáveis iniciais, ou seja, tudo que vem antes de Widget Build
}

class _HomeState extends State<Home> {
  // Aqui vão as Variáveis
  var variante = "?";

  @override
  Widget build(BuildContext context) {
    print("A aplicação carregou com sucesso!");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora Statefull"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, // Faz o espaçamento das colunas ser equivalente
          children: [
            const Text("Resolva a conta", style: TextStyle(fontSize: 30)),
            Text("5 + 10 / 0 = $variante",
                style: const TextStyle(fontSize: 35)),
            ElevatedButton(
              // Cria um botão com fundo
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, // Foreground é a cor do texto
                  backgroundColor: Colors.lightBlueAccent),
              onPressed: () {
                setState(() {
                  // Atualiza a parte da tela que foi modificada aqui, meio que recarregando o projeto, mas com as variáveis modificadas
                  runApp(DetalhesLulu());
                });
              },
              // Cria um botão com fundo
              child: const Text('Resolver', style: TextStyle(fontSize: 25)),
            )
          ],
        ),
      ),
    );
  }
}
