import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/my_links.dart';
import '../components/custom_bottom_nav.dart';

class ApresentacaoPage extends StatelessWidget {
  const ApresentacaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      bottomNavigationBar: const CustomBottomNav(
      currentIndex: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage:
                      AssetImage('assets/images/perfil.jpeg'),
                ),
              ),
              const SizedBox(height: 25),
              Text(
                'Julia Cristina dos Reis',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Futura Engenheira de Software | Apaixonada por Tecnologia e desenvolvimento de projetos inteligentes',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 35),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF1E293B),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sobre Mim',
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Possuo formação técnica concluída em Análise e Desenvolvimento de Sistemas e atualmente curso Engenharia de Software, ingressando no terceiro semestre da graduação.'
                      'Tenho interesse em evoluir continuamente na área de tecnologia e produto, aplicando meus conhecimentos técnicos aliados à experiência prática. Acredito que a combinação entre formação acadêmica, aprendizado técnico e vivência profissional é essencial para a criação de soluções eficientes e de impacto. ',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        height: 1.6,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Minhas Redes',
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              MyLinks(
                icon: Icons.code,
                text: 'GitHub',
                url: 'https://github.com/juhreisss',
              ),
              const SizedBox(height: 15),
              MyLinks(
                icon: Icons.work,
                text: 'LinkedIn',
                url: 'https://www.linkedin.com/in/julia-cristina-dos-reis/',
              ),
              const SizedBox(height: 15),
              MyLinks(
                icon: Icons.camera_alt,
                text: 'Instagram',
                url: 'https://instagram.com/reiss.juuh',
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  onPressed: () {Navigator.pushNamed(context, '/projetos');},
                  child: Text(
                    'Ver Projetos',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}