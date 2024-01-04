import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:offer_orange_theme/component/custom_button.dart';
import 'package:offer_orange_theme/component/my_appbar.dart';
import 'package:offer_orange_theme/component/my_drawer.dart';
import 'package:offer_orange_theme/constant/colors.dart';
import 'package:offer_orange_theme/D6_ikinci_fiyat_guncelle.dart';
import 'package:offer_orange_theme/D9_musteri_takip.dart';
import 'package:offer_orange_theme/D2_teklif_hesapla.dart';

class FiyatGuncelle extends StatefulWidget {
  const FiyatGuncelle({super.key});

  @override
  State<FiyatGuncelle> createState() => _FiyatGuncelleState();
}

class _FiyatGuncelleState extends State<FiyatGuncelle> {
  bool isDrawerOpen = false;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void whenTap() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      key: scaffoldKey,
      appBar: MyAppbar(
        baslik: 'Fiyat Güncelle',
        scaffoldKey: scaffoldKey,
      ),
      drawer: MyDrawer(),
      body: Center(
        child: ListView(children: [
          Column(
            children: [
              const SizedBox(height: 75),
              CustomButton(
                txtSize: 20,
                txt: "Modüller",
                width: 250,
                height: 90,
                onPressed: () {},
                isActive: true,
              ),
              CustomButton(
                txt: "Power Supplies",
                txtSize: 20,
                width: 250,
                height: 90,
                onPressed: () {},
                isActive: false,
              ),
              CustomButton(
                txt: "Receviers",
                txtSize: 20,
                width: 250,
                height: 90,
                onPressed: () {},
                isActive: false,
              ),
              CustomButton(
                txtSize: 20,
                txt: "Sending-Processors",
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
