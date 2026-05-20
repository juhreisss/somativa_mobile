import 'package:flutter/material.dart';
import 'pages/apresentacao_page.dart';
import 'pages/projeto_page.dart';
import 'pages/interativa_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/',

      routes: {
        '/': (context) => const ApresentacaoPage(),
        '/projetos': (context) => const ProjetoPage(),
        '/interativa': (context) => const InterativaPage(),
      },
    );
  }
}