import 'package:flutter/material.dart';

class ClimasPage extends StatelessWidget {
  const ClimasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("⛅  Climas do Brasil  🇧🇷"),
        backgroundColor: Colors.blue.shade900,
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/fundo.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(color: Colors.black.withValues(alpha: 0.5)),

          ListView(
            padding: const EdgeInsets.all(16),
            children: const [
              ClimaCard(
                titulo: "Tropical",
                descricao: "Quente e com chuvas no verão",
                icone: Icons.wb_sunny,
                cor: Colors.orange,
              ),
              ClimaCard(
                titulo: "Equatorial",
                descricao: "Quente e muito úmido",
                icone: Icons.water_drop,
                cor: Colors.green,
              ),
              ClimaCard(
                titulo: "Semiárido",
                descricao: "Quente e seco",
                icone: Icons.thermostat,
                cor: Colors.red,
              ),
              ClimaCard(
                titulo: "Subtropical",
                descricao: "Invernos mais frios",
                icone: Icons.ac_unit,
                cor: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ClimaCard extends StatelessWidget {
  final String titulo;
  final String descricao;
  final IconData icone;
  final Color cor;

  const ClimaCard({
    super.key,
    required this.titulo,
    required this.descricao,
    required this.icone,
    required this.cor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black.withValues(alpha: 0.9),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 8,
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Icon(icone, color: cor, size: 32),
        title: Text(
          titulo,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          descricao,
          style: TextStyle(color: const Color.fromARGB(168, 255, 255, 255)),
        ),
      ),
    );
  }
}
