import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:offer_orange_theme/8.%20rental_led_teklif_hesapla.dart';
import 'package:offer_orange_theme/fiyat_guncelle.dart';
import 'package:offer_orange_theme/ikinci_fiyat_guncelle.dart';
import 'package:offer_orange_theme/kabinli_led_teklif_hesapla.dart';
import 'package:offer_orange_theme/musteri_takip.dart';
import 'package:offer_orange_theme/normal_led_teklif_hesapla.dart';
import 'package:offer_orange_theme/scroll_test.dart';
import 'package:offer_orange_theme/teklif_hesapla.dart';
import 'package:offer_orange_theme/teklif_hesapla_rental_led.dart';
import 'package:offer_orange_theme/teklif_hesapla_rental_led_tablo.dart';
import 'package:offer_orange_theme/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      scrollBehavior: MyCustomScrollBehavior(),
      home: NormalLedTeklifHesapla(),
    );
  }
}