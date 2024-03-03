import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _quotesOfDay = [
    "Tempo é aquilo que o homem está sempre tentando matar, mas que no fim acaba matando-o.",
    "É preciso escolher um caminho que não tenha fim, mas, ainda assim, caminhar sempre na expectativa de encontrá-lo.",
    "A morte não é o fim. Resta sempre a luta pelo espólio.",
    "Encarar a vida pela frente... Sempre... Encarar a vida pela frente, e vê-la como ela é... Por fim, entendê-la e amá-la pelo que ela é... E depois deixá-la seguir... Sempre os anos entre nós, sempre os anos... Sempre o amor... Sempre a razão... Sempre o tempo... Sempre... As horas.",
    "O futuro é incerto e o fim está sempre perto!",
    "Chorei o fim de tudo, assim é a vida, uma morte a cada dia. Depois, como sempre, limpei o rosto e continuei.",
  ];

  var _quoteOfDay = 'Clique abaixo para gerar uma nova frase!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Frases do dia',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('images/logo.png'),
              Text(
                _quoteOfDay,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  var number = Random(DateTime.now().microsecond).nextInt(5) + 0;

                  setState(() {
                    _quoteOfDay = _quotesOfDay[number];
                  });
                },
                child: Text(
                  'Nova Frase',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith((states) => Colors.lightGreen),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}