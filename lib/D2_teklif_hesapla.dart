import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:offer_orange_theme/component/my_appbar.dart';
import 'package:offer_orange_theme/component/my_drawer.dart';
import 'package:offer_orange_theme/constant/colors.dart';
import 'package:offer_orange_theme/D3_kabinli_led_teklif_hesapla.dart';
import 'component/custom_button.dart';

class TeklifHesapla extends StatefulWidget {
  const TeklifHesapla({super.key});

  @override
  State<TeklifHesapla> createState() => _TeklifHesaplaState();
}

class _TeklifHesaplaState extends State<TeklifHesapla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: MyAppbar(baslik: 'Teklif Hesapla',),
      drawer: MyDrawer(),
      body: Center(
        child: ListView(children: [
          Column(
            children: [
              const SizedBox(height: 100),
              CustomButton(
                txtSize: 20,
                txt: "Normal Led",
                width: 250,
                height: 90,
                onPressed: () {},
                isActive: true,
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                txt: "Kabinli Led",
                txtSize: 20,
                width: 250,
                height: 90,
                onPressed: () {},
                isActive: false,
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                txt: "Rental Led",
                txtSize: 20,
                width: 250,
                height: 90,
                onPressed: () {},
                isActive: false,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
