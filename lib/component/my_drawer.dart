import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../D2_teklif_hesapla.dart';
import '../D6_ikinci_fiyat_guncelle.dart';
import '../D9_musteri_takip.dart';
import '../constant/colors.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});

  bool isDrawerOpen = false;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      clipBehavior: Clip.none,
      backgroundColor: primaryColor,
      child: Column(
        children: [
          const SizedBox(height: 270),
          ListTile(
            leading: SvgPicture.asset("assets/icons/fiyat_guncelle.svg",colorFilter: const ColorFilter.mode(profileCardColor,BlendMode.srcIn),width: 30,height: 30,),
            title: const Text(
              "Fiyat Güncelle",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            onTap: () {
              scaffoldKey.currentState!.closeDrawer();
              Get.to(const IkinciFiyatGuncelle());
            },
          ),
          const SizedBox(height: 30),
          ListTile(
            leading: SvgPicture.asset("assets/icons/teklif_hesapla.svg",colorFilter: const ColorFilter.mode(profileCardColor,BlendMode.srcIn),width: 30,height: 30,),
            title: const Text(
              "Teklif Hesapla",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            onTap: () {
              scaffoldKey.currentState!.closeDrawer();
              Get.to(const TeklifHesapla());
            },
          ),
          const SizedBox(height: 30),
          ListTile(
            leading:  SvgPicture.asset("assets/icons/musteri_takip.svg",colorFilter: const ColorFilter.mode(profileCardColor,BlendMode.srcIn),width: 30,height: 30,),
            title: const Text(
              "Müşteri Takip",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            onTap: () {
              scaffoldKey.currentState!.closeDrawer();
              Get.to(const MusteriTakip());
            },
          ),
        ],
      ),
    );
  }
}
