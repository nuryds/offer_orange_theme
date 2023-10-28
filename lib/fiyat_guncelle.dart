import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:offer_orange_theme/component/custom_button.dart';
import 'package:offer_orange_theme/constant/colors.dart';
import 'package:offer_orange_theme/ikinci_fiyat_guncelle.dart';


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
        backgroundColor: appbarColor,
        title: const Text("Fiyat Güncelle",style:TextStyle(color: Colors.white,fontWeight: FontWeight.w300),
        ),
      ),
      drawer:ClipPath(
        child: Drawer(
          backgroundColor: appbarColor,
          child: SafeArea(
            child:Column(
              children: [
                const SizedBox(height: 220),
                ListTile(
                  leading: const Icon(Icons.settings_backup_restore),
                  title: const Text("Fiyat Güncelle",style: TextStyle(fontSize: 16,color: Colors.white),),
                  onTap: (){
                    // go to fiyat güncelle sayfası
                  },
                ),
                const SizedBox(height: 17),
                ListTile(
                  leading: const Icon(Icons.calculate_rounded),
                  title: const Text("Teklif Hesapla",style: TextStyle(fontSize: 16,color: Colors.white),),
                  onTap: (){
                    // go to fiyat güncelle sayfası
                  },
                ),
                const SizedBox(height: 17),
                ListTile(
                  leading: const Icon(Icons.follow_the_signs),
                  title: const Text("Müşteri Takip",style: TextStyle(fontSize: 16,color: Colors.white),),
                  onTap: (){
                    // go to fiyat güncelle sayfası
                  },
                ),

              ],
            ),
          ),
        ),

      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            CustomButton(
              txtSize: 20,
              txt: "Modüller",
              width: 200,
              height: 85,
              onPressed: (){

              },
              isActive: true,
            ),
            CustomButton(
              txt: "Power Supplies",
              txtSize: 20,
              width: 200,
              height: 85,
              onPressed: (){

              },
              isActive: false,
            ),
            CustomButton(
              txt: "Receviers",
              txtSize: 20,
              width: 200,
              height: 85,
              onPressed:(){

              },
              isActive: false,
            ),
            CustomButton(
              txtSize: 20,
              txt: "Sending-Processors",
              width: 200,
              height: 85,
              onPressed: (){

              },
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}