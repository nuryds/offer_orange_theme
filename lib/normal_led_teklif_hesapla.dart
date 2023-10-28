import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offer_orange_theme/constant/colors.dart';
import 'package:offer_orange_theme/kabinli_led_teklif_hesapla.dart';
import 'package:offer_orange_theme/teklif_hesapla.dart';

class NormalLedTeklifHesapla extends StatefulWidget {
  const NormalLedTeklifHesapla({super.key});

  @override
  State<NormalLedTeklifHesapla> createState() => _NormalLedTeklifHesaplaState();
}

class _NormalLedTeklifHesaplaState extends State<NormalLedTeklifHesapla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.to(const TeklifHesapla());
          }, icon: const Icon(Icons.arrow_back,color: Colors.white),

        ),
        actions: [
          IconButton(
            onPressed:(){
              Get.to(const KabinliLedTeklifHesapla());
            },
            icon: const Icon(Icons.exit_to_app,color: Colors.white),
          ),
        ],
        backgroundColor:appbarColor,
        title: const Text("Normal Led Teklif Hesapla",style:TextStyle(color: Colors.white,fontWeight: FontWeight.w300),
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