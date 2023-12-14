import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:offer_orange_theme/component/custom_button.dart';
import 'package:offer_orange_theme/constant/colors.dart';
import 'package:offer_orange_theme/ikinci_fiyat_guncelle.dart';
import 'package:offer_orange_theme/musteri_takip.dart';
import 'package:offer_orange_theme/teklif_hesapla.dart';

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
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.to(const IkinciFiyatGuncelle());
            },
            icon: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset("assets/icons/ileri_icon.svg",colorFilter: ColorFilter.mode(profileCardColor,BlendMode.srcIn),width: 26,
                  height: 23),
            ),
          ),
        ],
        backgroundColor: primaryColor,
        title: const Center(
          child: Text(
            "Fiyat Güncelle",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
          ),
        ),
      ),
      drawer: Drawer(
        clipBehavior: Clip.none,
        backgroundColor: primaryColor,
        child: Column(
          children: [
            const SizedBox(height: 220),
            ListTile(
              leading: SvgPicture.asset("assets/icons/fiyat_guncelle.svg",colorFilter: ColorFilter.mode(profileCardColor,BlendMode.srcIn),width: 30,height: 30,),
              title: const Text(
                "Fiyat Güncelle",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              onTap: () {
                scaffoldKey.currentState!.closeDrawer();
                Get.to(const IkinciFiyatGuncelle());
              },
            ),
            const SizedBox(height: 17),
            ListTile(
              leading: SvgPicture.asset("assets/icons/teklif_hesapla.svg",colorFilter: ColorFilter.mode(profileCardColor,BlendMode.srcIn),width: 30,height: 30,),
              title: const Text(
                "Teklif Hesapla",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              onTap: () {
                scaffoldKey.currentState!.closeDrawer();
                Get.to(const TeklifHesapla());
              },
            ),
            const SizedBox(height: 17),
            ListTile(
              leading:  SvgPicture.asset("assets/icons/musteri_takip.svg",colorFilter: ColorFilter.mode(profileCardColor,BlendMode.srcIn),width: 30,height: 30,),
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
      ),
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
