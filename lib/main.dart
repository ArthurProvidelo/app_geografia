import 'package:app_geografia/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const GeoTempApp());
}

class GeoTempApp extends StatelessWidget {
  const GeoTempApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GeoTemp',
      home: const HomePage(),
    );
  }
}
