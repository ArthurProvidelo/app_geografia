import 'package:flutter/material.dart';

class CuriosidadesPage extends StatelessWidget {
  const CuriosidadesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Curiosidades do Brasil"),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: const [
          ListTile(title: Text("O Brasil é o maior país da América do Sul")),
          ListTile(
            title: Text("A Amazônia é a maior floresta tropical do mundo"),
          ),
          ListTile(title: Text("O Brasil tem mais de 7 mil km de litoral")),
          ListTile(title: Text("O futebol é o esporte mais popular")),
        ],
      ),
    );
  }
}
