import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/custom_bottom_nav.dart';

class InterativaPage extends StatefulWidget {
  const InterativaPage({super.key});

  @override
  State<InterativaPage> createState() => _InterativaPageState();
}

class _InterativaPageState extends State<InterativaPage> {
  String area = 'Mobile';
  String nivel = 'Iniciante';
  String tecnologia = 'Flutter';

  String resultado = '';

  void gerarPerfil() {
    setState(() {
      resultado =
          'Você possui perfil voltado para desenvolvimento $area utilizando $tecnologia. Seu nível atual é $nivel, demonstrando interesse em soluções modernas e tecnologia.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Perfil Tech',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),

      bottomNavigationBar: const CustomBottomNav(
        currentIndex: 2,
      ),

      body: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Área de Interesse',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 10),
        DropdownButtonFormField(
          value: area,
          dropdownColor: const Color(0xFF1E293B),
          style: const TextStyle(color: Colors.white),
          items: const [
            DropdownMenuItem(
              value: 'Mobile',
              child: Text('Mobile'),
            ),
            DropdownMenuItem(
              value: 'Web',
              child: Text('Web'),
            ),
            DropdownMenuItem(
              value: 'IoT',
              child: Text('IoT'),
            ),
            DropdownMenuItem(
              value: 'IA',
              child: Text('IA'),
            ),
          ],
          onChanged: (value) {
            setState(() {
              area = value!;
            });
          },
        ),
        const SizedBox(height: 25),
        Text(
          'Nível',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 10),
        DropdownButtonFormField(
          value: nivel,
          dropdownColor: const Color(0xFF1E293B),
          style: const TextStyle(color: Colors.white),
          items: const [
            DropdownMenuItem(
              value: 'Iniciante',
              child: Text('Iniciante'),
            ),
            DropdownMenuItem(
              value: 'Intermediário',
              child: Text('Intermediário'),
            ),
            DropdownMenuItem(
              value: 'Avançado',
              child: Text('Avançado'),
            ),
          ],
          onChanged: (value) {
            setState(() {
              nivel = value!;
            });
          },
        ),
        const SizedBox(height: 25),
        Text(
          'Tecnologia Favorita',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 10),
        DropdownButtonFormField(
          value: tecnologia,
          dropdownColor: const Color(0xFF1E293B),
          style: const TextStyle(color: Colors.white),
          items: const [
            DropdownMenuItem(
              value: 'Flutter',
              child: Text('Flutter'),
            ),
            DropdownMenuItem(
              value: 'Python',
              child: Text('Python'),
            ),
            DropdownMenuItem(
              value: 'Arduino',
              child: Text('Arduino'),
            ),
            DropdownMenuItem(
              value: 'JavaScript',
              child: Text('JavaScript'),
            ),
          ],
          onChanged: (value) {
            setState(() {
              tecnologia = value!;
            });
          },
        ),
        const SizedBox(height: 35),
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
            onPressed: gerarPerfil,
            child: Text(
              'Gerar Perfil',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 35),
        if (resultado.isNotEmpty)
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFF1E293B),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              resultado,
              style: GoogleFonts.poppins(
                color: Colors.white,
                height: 1.5,
                fontSize: 16,
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