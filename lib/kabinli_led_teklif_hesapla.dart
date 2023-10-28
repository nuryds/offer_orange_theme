import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offer_orange_theme/constant/colors.dart';
import 'package:offer_orange_theme/ikinci_fiyat_guncelle.dart';

import 'normal_led_teklif_hesapla.dart';

class KabinliLedTeklifHesapla extends StatefulWidget {
  const KabinliLedTeklifHesapla({super.key});

  @override
  State<KabinliLedTeklifHesapla> createState() => _KabinliLedTeklifHesaplaState();
}

class _KabinliLedTeklifHesaplaState extends State<KabinliLedTeklifHesapla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.to( NormalLedTeklifHesapla());
          }, icon: const Icon(Icons.arrow_back,color: Colors.white),

        ),
        actions: [
          IconButton(
            onPressed:(){
              Get.to(const IkinciFiyatGuncelle());
            },
            icon: const Icon(Icons.exit_to_app,color: Colors.white),
          ),
        ],
        backgroundColor: appbarColor,
        title: Center(
          child: Text("Kabinli Led Teklif Hesapla",style:TextStyle(color: Colors.white,fontWeight: FontWeight.w300),
          ),
        ),
      ),
      body: const Center(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}