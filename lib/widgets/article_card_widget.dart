import 'package:flutter/material.dart';

class ArticleCardWidget extends StatelessWidget {
  const ArticleCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Momen Inspiratif Ramadhan",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "Bulan Ramadhan sering kali menjadi momen untuk berbagi pesan inspiratif dan ucapan selamat kepada keluarga serta teman. Salah satu cara kreatif untuk menyampaikan pesan ini adalah dengan membuat stiker bertulisan Arab yang bisa digunakan di WhatsApp atau media sosial.",
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
