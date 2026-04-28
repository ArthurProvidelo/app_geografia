import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ConversorPage(),
    );
  }
}

class ConversorPage extends StatefulWidget {
  const ConversorPage({super.key});

  @override
  State<ConversorPage> createState() => _ConversorPageState();
}

class _ConversorPageState extends State<ConversorPage> {
  final TextEditingController _controller = TextEditingController();
  String resultado = "";

  void celsiusParaFahrenheit() {
    double c = double.tryParse(_controller.text) ?? 0;
    double f = (c * 9 / 5) + 32;

    setState(() {
      resultado = "$c °C = ${f.toStringAsFixed(2)} °F";
    });
  }

  void fahrenheitParaCelsius() {
    double f = double.tryParse(_controller.text) ?? 0;
    double c = (f - 32) * 5 / 9;

    setState(() {
      resultado = "$f °F = ${c.toStringAsFixed(2)} °C";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Conversor de Temperatura 🌡️")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Digite a temperatura",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: celsiusParaFahrenheit,
                  child: const Text("C° → F°"),
                ),
                ElevatedButton(
                  onPressed: fahrenheitParaCelsius,
                  child: const Text("F° → C°"),
                ),
              ],
            ),

            const SizedBox(height: 30),

            Text(resultado, style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
