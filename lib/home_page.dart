import 'package:flutter/material.dart';
import 'climas_page.dart';
import 'curiosidades_page.dart';
import 'conversor_page.dart';
import 'mapa_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text(
          "GeoTemp 🗺️",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("fundo.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.5),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 30),

                          const Icon(
                            Icons.public,
                            size: 80,
                            color: Colors.white,
                          ),

                          const SizedBox(height: 10),

                          const Text(
                            "Explore o mundo com o GeoTemp",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),

                          const SizedBox(height: 25),

                          Container(
                            padding: const EdgeInsets.all(18),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: const Text(
                              "O GeoTemp é um aplicativo interativo que integra geografia e climatologia. Nele, é possível explorar os climas do Brasil, descobrir curiosidades e utilizar ferramentas como o conversor de temperatura em um único ambiente.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),

                          const SizedBox(height: 30),

                          botao(
                            context,
                            "Climas",
                            const ClimasPage(),
                            Icons.wb_sunny,
                          ),
                          botao(
                            context,
                            "Curiosidades",
                            const CuriosidadesPage(),
                            Icons.lightbulb,
                          ),
                          botao(
                            context,
                            "Conversor",
                            const ConversorPage(),
                            Icons.thermostat,
                          ),
                          botao(
                            context,
                            "Mapa Mundial",
                            const MapaPage(),
                            Icons.map,
                          ),

                          const Spacer(), // 🔥 resolve o espaço em branco
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

Widget botao(
  BuildContext context,
  String texto,
  Widget pagina,
  IconData icone,
) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => pagina));
        },
        icon: Icon(icone),
        label: Text(texto, style: const TextStyle(fontSize: 16)),
      ),
    ),
  );
}
