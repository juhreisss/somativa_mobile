import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyLinks extends StatelessWidget {
  final IconData icon;
  final String text;
  final String url;

  const MyLinks({
    super.key,
    required this.icon,
    required this.text,
    required this.url,
  });

  Future<void> openLink() async {
    final Uri link = Uri.parse(url);

    if (await canLaunchUrl(link)) {
      await launchUrl(link);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 28,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          IconButton(
            onPressed: openLink,
            icon: const Icon(
              Icons.open_in_new,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}