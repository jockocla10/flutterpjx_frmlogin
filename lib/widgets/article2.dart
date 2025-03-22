import 'package:flutter/material.dart';

class Article2 extends StatelessWidget {
  const Article2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Harga Bawang Merah Melonjak Jelang Lebaran",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "Jakarta - Badan Pangan Nasional mencatat terjadi kenaikan harga bawang merah dan bawang putih menjelang Lebaran. Kenaikannya hingga 20% dibandingkan Harga Acuan Penjualan (HAP) Baca artikel detikfinance, Harga Bawang Merah dan Bawang Putih Melonjak Jelang Lebaran",
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
