import 'package:flutter/material.dart';
import 'package:app_geografia/home_page.dart';

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
      theme: ThemeData(
        primaryColor: Colors.blue.shade900,
        scaffoldBackgroundColor: Colors.grey[100],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue.shade900,
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 4,
        ),
        textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 16)),
      ),
      home: const HomePage(),
    );
  }
}
