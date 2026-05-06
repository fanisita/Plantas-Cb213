import 'package:flutter/material.dart';
import 'pantalla_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        // Configuramos los colores directamente aquí para evitar líneas amarillas
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6B8E63),
          primary: const Color(0xFF6B8E63),
          surface: const Color(0xFFF3F7F2),
        ),
        scaffoldBackgroundColor: const Color(0xFFF3F7F2),
      ),
      home: const PantallaSplash(),
    );
  }
}