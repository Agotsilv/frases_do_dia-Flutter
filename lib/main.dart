// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Frases do Dia",
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _MainState();
}

class _MainState extends State<Home> {
  var frases = [
    "Enfrente os problemas e leve a melhor!",
    "Dê mais atenção ao que você tem de bom na sua vida",
    "Para chegar ao topo, o que importa é começar!",
    "De nada adianta ter sonhos, se você não se empenhar em correr atrás",
    "Preste atenção nas oportunidades que estão à sua frente!",
    "Positividade para começar o dia é colocar a sua fé em prática",
    "Não deixe nada nem ninguém estragar o seu bom humor",
    "Ontem já passou, é hora de planejar o futuro",
    "Você pode não ter o melhor do mundo, mas tem muito pelo que agradecer!",
    "Não deixe sua felicidade nas mãos de ninguém!"
  ];

  String _fraseGerada = "Clique abaixo para gerar uma nova frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(frases.length);
    setState(() {
      _fraseGerada = frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do Dia'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/logo.png',
            ),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black),
            ),
            ElevatedButton(
              onPressed: _gerarFrase,
              child: Text(
                "Nova Frase",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, padding: EdgeInsets.all(10)),
            )
          ],
        ),
      ),
    );
  }
}
