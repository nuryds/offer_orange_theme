import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:offer_orange_theme/component/custom_textfield.dart';
import 'package:offer_orange_theme/constant/colors.dart';
import 'package:offer_orange_theme/fiyat_guncelle.dart';

import 'normal_led_teklif_hesapla.dart';

class IkinciFiyatGuncelle extends StatefulWidget {
  const IkinciFiyatGuncelle({super.key});

  @override
  State<IkinciFiyatGuncelle> createState() => _IkinciFiyatGuncelleState();
}

class _IkinciFiyatGuncelleState extends State<IkinciFiyatGuncelle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.to(FiyatGuncelle());
          }, icon: const Icon(Icons.arrow_back, color: Colors.white),

        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(NormalLedTeklifHesapla());
            },
            icon: const Icon(Icons.exit_to_app, color: Colors.white),
          ),
        ],
        backgroundColor: appbarColor,
        title: Center(
          child: Text("Fiyat Güncelle",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            CustomTextField(
              label: "nur",
              labelTextSize: 13,
            ),
          ],
        ),
      ),
    );
  }
  }
