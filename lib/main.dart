import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:offer_orange_theme/D10_musteri_giris.dart';
import 'package:offer_orange_theme/D1_fiyat_guncelle.dart';
import 'package:offer_orange_theme/D2_teklif_hesapla.dart';
import 'package:offer_orange_theme/D3_kabinli_led_teklif_hesapla.dart';
import 'package:offer_orange_theme/D4_normal_led_teklif_hesapla.dart';
import 'package:offer_orange_theme/D5_teklif_hesapla_rental_led.dart';
import 'package:offer_orange_theme/D6_ikinci_fiyat_guncelle.dart';
import 'package:offer_orange_theme/D9_musteri_takip.dart';
import 'package:offer_orange_theme/expandable_listwiew2.dart';
import 'package:offer_orange_theme/teklif_hesapla_normal_led_musteri.dart';
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
      home: MusteriTakip(),
    );
  }
}