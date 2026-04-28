import 'package:flutter/material.dart';

class ClimasPage extends StatelessWidget {
  const ClimasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Climas do Brasil"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.wb_sunny),
            title: Text("Tropical"),
            subtitle: Text("Quente e com chuvas no verão"),
          ),
          ListTile(
            leading: Icon(Icons.water_drop),
            title: Text("Equatorial"),
            subtitle: Text("Quente e muito úmido"),
          ),
          ListTile(
            leading: Icon(Icons.thermostat),
            title: Text("Semiárido"),
            subtitle: Text("Quente e seco"),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text("Subtropical"),
            subtitle: Text("Invernos mais frios"),
          ),
        ],
      ),
    );
  }
}
