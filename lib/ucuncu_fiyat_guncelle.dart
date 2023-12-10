import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:offer_orange_theme/8. rental_led_teklif_hesapla.dart';
import 'package:offer_orange_theme/teklif_hesapla.dart';
import 'package:offer_orange_theme/teklif_hesapla_rental_led.dart';

import 'component/custom_divider.dart';
import 'component/custom_textfield.dart';
import 'constant/colors.dart';
import 'fiyat_guncelle.dart';

class UcuncuFiyatGuncelle extends StatefulWidget {
  const UcuncuFiyatGuncelle({super.key});

  @override
  State<UcuncuFiyatGuncelle> createState() => _UcuncuFiyatGuncelleState();
}

void onPressedrefresh() {
  //resfresh butonuna basınca yapılacaklar
}

class _UcuncuFiyatGuncelleState extends State<UcuncuFiyatGuncelle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.to(const FiyatGuncelle());
            },
            icon: const Icon(Icons.arrow_back, color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Get.to(const RentalLedTeklifHesapla());
              },
              icon: const Icon(Icons.exit_to_app, color: Colors.white),
            ),
          ],
          backgroundColor: primaryColor,
          title: const Text(
            "Fiyat Güncelle",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: 9,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: SizedBox(width: 1)),
                      Text("P 1,86 indoor", style: TextStyle(fontSize: 25)),
                      Flexible(child: SizedBox(width: 80)),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: CustomTextField(
                              width: 200,
                              label: "Fiyat",
                            ),
                          ),
                          IconButton(
                            onPressed: onPressedrefresh,
                            icon: Icon(
                              Icons.refresh,
                              size: 30,
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                      Expanded(child: SizedBox(width: 1)),
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return MyDivider(
                    indent: 200,
                    endIndent: 200,
                  );
                },
              ),
            )
          ],
        ));
  }
}
