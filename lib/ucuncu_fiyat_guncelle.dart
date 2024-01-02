import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:offer_orange_theme/D7_rental_led_teklif_hesapla.dart';
import 'package:offer_orange_theme/component/my_appbar.dart';
//import 'package:offer_orange_theme/D2_teklif_hesapla.dart';
//import 'package:offer_orange_theme/D5_teklif_hesapla_rental_led.dart';
import 'component/custom_divider.dart';
import 'component/custom_textfield.dart';
import 'component/my_drawer.dart';
import 'constant/colors.dart';
import 'D1_fiyat_guncelle.dart';

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
        appBar: MyAppbar(baslik: 'Teklif Hesapla',),
        drawer: MyDrawer(),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: 9,
                itemBuilder: (context, index) {
                  return const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
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
                  return const MyDivider(
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
