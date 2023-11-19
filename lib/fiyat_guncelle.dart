import 'package:flutter/material.dart';
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

  void whenTap(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed:(){
              Get.to(const IkinciFiyatGuncelle());
            },
            icon: const Icon(Icons.exit_to_app,color: Colors.white),
          ),
        ],
        backgroundColor: primaryColor,
        title: const Center(
          child: Text("Fiyat Güncelle",style:TextStyle(color: Colors.white,fontWeight: FontWeight.w300),
          ),
        ),
      ),
      drawer:Drawer(
        clipBehavior: Clip.none,
        backgroundColor: primaryColor,
        child: Column(
          children: [
            const SizedBox(height: 220),
            ListTile(
              leading: const Icon(Icons.settings_backup_restore),
              title: const Text("Fiyat Güncelle",style: TextStyle(fontSize: 16,color: Colors.white),),
              onTap: (){
                Get.to(const IkinciFiyatGuncelle());
              },
            ),
            const SizedBox(height: 17),
            ListTile(
              leading: const Icon(Icons.calculate_rounded),
              title: const Text("Teklif Hesapla",style: TextStyle(fontSize: 16,color: Colors.white),),
              onTap: (){
                Get.to(const TeklifHesapla());
              },
            ),
            const SizedBox(height: 17),
            ListTile(
              leading: const Icon(Icons.follow_the_signs),
              title: const Text("Müşteri Takip",style: TextStyle(fontSize: 16,color: Colors.white),),
              onTap: (){
                Get.to(const MusteriTakip());
              },
            ),

          ],
        ),
      ),
      body: Center(
        child: ListView(
          children:[ Column(
            children: [
              const SizedBox(height: 75),
              CustomButton(
                txtSize: 20,
                txt: "Modüller",
                width: 250,
                height: 90,
                onPressed: (){

                },
                isActive: true,
              ),
              CustomButton(
                txt: "Power Supplies",
                txtSize: 20,
                width: 250,
                height: 90,
                onPressed: (){

                },
                isActive: false,
              ),
              CustomButton(
                txt: "Receviers",
                txtSize: 20,
                width: 250,
                height: 90,
                onPressed:(){

                },
                isActive: false,
              ),
              CustomButton(
                txtSize: 20,
                txt: "Sending-Processors",
                width: 250,
                height: 90,
                onPressed: (){

                },
                isActive: false,
              ),
            ],
          ),
      ]
        ),
      ),
    );
  }
}