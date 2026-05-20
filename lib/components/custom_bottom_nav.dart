import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNav({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      backgroundColor: const Color(0xFF1E293B),
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.white70,

      onTap: (index) {
        if (index == 0) {
          Navigator.pushNamed(context, '/');
        }

        if (index == 1) {
          Navigator.pushNamed(context, '/projetos');
        }

        if (index == 2) {
          Navigator.pushNamed(context, '/interativa');
        }
      },

      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Sobre',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.work),
          label: 'Projetos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.smart_toy),
          label: 'Interativa',
        ),
      ],
    );
  }
}