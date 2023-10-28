import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:offer_orange_theme/constant/colors.dart';
import 'package:offer_orange_theme/ikinci_fiyat_guncelle.dart';

class TeklifHesapla extends StatefulWidget {
  const TeklifHesapla({super.key});

  @override
  State<TeklifHesapla> createState() => _TeklifHesaplaState();
}

class _TeklifHesaplaState extends State<TeklifHesapla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.to( IkinciFiyatGuncelle());
          }, icon: const Icon(Icons.arrow_back,color: Colors.white),

        ),
        actions: [
          IconButton(
            onPressed: (){
              Get.to(const IkinciFiyatGuncelle());
            },
            icon: const Icon(Icons.exit_to_app,color: Colors.white),
          ),
        ],
        backgroundColor: appbarColor,
        title: const Text("Teklif Hesapla",style:TextStyle(color: Colors.white,fontWeight: FontWeight.w300),
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