import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/projeto_card.dart';
import '../components/custom_bottom_nav.dart';

class ProjetoPage extends StatelessWidget {
  const ProjetoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      bottomNavigationBar: const CustomBottomNav(
      currentIndex: 0,
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Meus Projetos',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: const [
            ProjetoCard(
              nome: 'SmartCity',
              descricao:
                  'Sistema inteligente com IoT voltado para automação e monitoramento urbano.',
              tecnologia: 'Django • React • Sensores',
            ),
            SizedBox(height: 20),
            ProjetoCard(
              nome: 'Filminis',
              descricao:
                  'Aplicação de catálogo de filmes com interface moderna e gerenciamento de conteúdo.',
              tecnologia: 'React • Python ',
            ),
            SizedBox(height: 20),
            ProjetoCard(
              nome: 'Aluguel',
              descricao:
                  'Projeto focado em sistema de aluguel para imoveis, com funcionalidades de busca, cadastro e gerenciamento.',
              tecnologia: 'Django • React',
            ),
            SizedBox(height: 20),
            ProjetoCard(
              nome: 'Gen IA',
              descricao:
                  'Projeto utilizando inteligência artificial generativa para respostas inteligentes.',
              tecnologia: 'IA • Django • React ',
            ),
            SizedBox(height: 20),
            ProjetoCard(
              nome: 'Arbor',
              descricao:
                  'Sistema sustentável com foco em monitoramento ambiental.',
              tecnologia: 'JavaScript • Node.js • React',
            ),
          ],
        ),
      ),
    );
  }
}