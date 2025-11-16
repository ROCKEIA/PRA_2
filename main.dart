import 'package:flutter/material.dart';
import 'home_page.dart';   // ✔ CORRECTO

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entrenamientos App',
      home: const MiPagina(),   // ✔ Tu pantalla inicial
    );
  }
}




