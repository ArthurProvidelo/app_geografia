import 'package:flutter/material.dart';

class CuriosidadesPage extends StatelessWidget {
  const CuriosidadesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Curiosidades do Brasil"),
        backgroundColor: Colors.blue.shade900,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SizedBox.expand(
        child: Stack(
          children: [
            // 🌍 FUNDO
            Image.asset(
              "fundo.png",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

            // 🌑 OVERLAY
            Container(color: Colors.black.withValues(alpha: 0.5)),

            // 📋 CONTEÚDO
            ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                CuriosidadeCard(
                  imagem: 'assets/brasil.png',
                  texto: "O Brasil é o maior país da América do Sul",
                ),
                CuriosidadeCard(
                  imagem: 'assets/amazonia.png',
                  texto: "A Amazônia é a maior floresta tropical do mundo",
                ),
                CuriosidadeCard(
                  imagem: 'assets/litoral_brasileiro.png',
                  texto: "O Brasil tem mais de 7 mil km de litoral",
                ),
                CuriosidadeCard(
                  imagem: 'assets/futebol.png',
                  texto: "O futebol é o esporte mais popular",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CuriosidadeCard extends StatelessWidget {
  final String imagem;
  final String texto;

  const CuriosidadeCard({super.key, required this.imagem, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black.withValues(alpha: 0.6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 6,
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(imagem, width: 50, height: 50, fit: BoxFit.cover),
        ),
        title: Text(
          texto,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
