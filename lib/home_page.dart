import 'package:flutter/material.dart';
import 'climas_page.dart';
import 'curiosidades_page.dart';
import 'conversor_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900, // fundo escuro
      appBar: AppBar(
        title: const Text(
          "GeoTemp",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white, // aqui muda para branco
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("fundo.png"), // Or NetworkImage("url")
            fit: BoxFit.cover, // Ensures the image covers the whole screen
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:
                CrossAxisAlignment.center, // centraliza horizontal
            children: [
              const SizedBox(height: 30),

              botao(context, "Climas", const ClimasPage()),
              botao(context, "Curiosidades", const CuriosidadesPage()),
              botao(context, "Conversor", const ConversorPage()),
            ],
          ),
        ),
      ),
    );
  }
}

Widget botao(BuildContext context, String texto, Widget pagina) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: SizedBox(
      width: double.infinity, // botão ocupa largura toda
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => pagina));
        },
        child: Text(texto),
      ),
    ),
  );
}
