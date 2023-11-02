import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 10, // Boşluk yüksekliği
      color: Colors.yellow, // Çizgi rengi
      thickness: 1, // Çizgi kalınlığı
      indent: 300, // Sol taraf boşluğu
      endIndent: 300, // Sağ taraf boşluğu
    );
  }
}







