import 'package:flutter/material.dart';
import 'dart:math';

class Biscoito extends StatefulWidget {
  const Biscoito({Key? key}) : super(key: key);

  @override
  State<Biscoito> createState() => _BiscoitoState();
}

class _BiscoitoState extends State<Biscoito> {
  var lista = [
    "",
    "Quebrar biscoito",
    "Quebrar novo biscoito",
    "Sonhos são caminhos construídos pelo coração.",
    "Impossível é uma palavra que serve só de enfeite no dicionário.",
    "Dias nublados guardam o sol atrás deles.",
    "Um dia bonito começa com um barril de esperança e um café de otimismo.",
    "Jamais se esqueça: você é o motivo do sorriso de muitas pessoas."
  ];
  var posicao = 0, botao = 1, ultimaPosicao = 0;
  var imagem = Image(
    image: AssetImage("assets/biscoito.jpg"),
    width: 311,
    height: 162,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BISCOITO DA SORTE",
          style: TextStyle(fontFamily: "Pixelify"),
        ),
        centerTitle: mounted,
        backgroundColor: Colors.brown,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          imagem,
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              lista[posicao],
              style: const TextStyle(fontSize: 22),
              textAlign: TextAlign.justify,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.teal),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                lista[botao],
                style: const TextStyle(fontSize: 22, fontFamily: "Pixelify"),
              ),
            ),
            onPressed: () => {
              setState(() {
                botao = 2;
                ultimaPosicao = posicao;
                while (ultimaPosicao == posicao) {
                  posicao = random(3, lista.length);
                }
                imagem = const Image(
                    image: NetworkImage(
                        "data:image/jpeg;base64,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"));
              })
            },
          )
        ],
      )),
    );
  }
}

int random(int min, int max) {
  var value = min + Random().nextInt(max - min);
  return value;
}
