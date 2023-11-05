import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
// import 'package:offer_orange_theme/component/custom_textfield.dart';
import 'package:offer_orange_theme/constant/colors.dart';
import 'package:offer_orange_theme/ikinci_fiyat_guncelle.dart';
import 'package:offer_orange_theme/normal_led_teklif_hesapla.dart';

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
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.to( NormalLedTeklifHesapla());
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
      body:Center(
        child: ListView(
          children:[ Column(
            children: [
              SizedBox(height: 100),
              CustomButton(
                txtSize: 20,
                txt: "Normal Led",
                width: 250,
                height: 90,
                onPressed: (){

                },
                isActive: true,
              ),
              SizedBox(height: 50,),
              CustomButton(
                txt: "Kabinli Led",
                txtSize: 20,
                width: 250,
                height: 90,
                onPressed: (){

                },
                isActive: false,
              ),
              SizedBox(height: 50,),
              CustomButton(
                txt: "Rental Led",
                txtSize: 20,
                width: 250,
                height: 90,
                onPressed:(){

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