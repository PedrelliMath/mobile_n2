import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'roupas_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Organizador de Roupas',
      theme: brownTheme,
      home: RoupasPage(),
    );
  }
}

final ThemeData brownTheme = ThemeData(
  colorScheme: ColorScheme(
    primary: Color(0xFF6D4C41), // Marrom escuro
    primaryContainer: Color(0xFF8D6E63), // Tom médio de marrom
    secondary: Color(0xFFA1887F), // Marrom acinzentado
    secondaryContainer: Color(0xFFD7CCC8), // Marrom claro
    surface: Color(0xFFFFF3E0), // Marrom muito claro
    error: Colors.red.shade700,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.black,
    onError: Colors.white,
    brightness: Brightness.light,
  ),
);



