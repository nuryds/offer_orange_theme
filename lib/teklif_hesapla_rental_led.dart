import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:offer_orange_theme/constant/styles.dart';
import 'package:offer_orange_theme/teklif_hesapla.dart';
import 'package:offer_orange_theme/ucuncu_fiyat_guncelle.dart';

import 'component/custom_button.dart';
import 'component/custom_divider.dart';
import 'constant/colors.dart';
import 'ikinci_fiyat_guncelle.dart';
import 'kabinli_led_teklif_hesapla.dart';
import 'musteri_takip.dart';
import 'normal_led_teklif_hesapla.dart';

class TeklifHesaplaRentalLed extends StatefulWidget {
  const TeklifHesaplaRentalLed({super.key});

  @override
  State<TeklifHesaplaRentalLed> createState() => _TeklifHesaplaRentalLedState();
}

class _TeklifHesaplaRentalLedState extends State<TeklifHesaplaRentalLed> {

   void onPressedbutton (){

   }
   final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      key: scaffoldKey,
      appBar: AppBar(
         leading: IconButton(
          icon: Icon(Icons.menu),
      onPressed: () {
       // Scaffold.of(context).openDrawer();
      },
    ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(const UcuncuFiyatGuncelle());
            },
            icon: const Icon(Icons.exit_to_app, color: Colors.white),
          ),
        ],
        backgroundColor:primaryColor,
        title:Center(
          child: Text("Teklif Hesapla / Rental Led",style:GoogleFonts.manrope(
            fontSize: 23,
            color: onPrimaryTextColor,
            fontWeight: FontWeight.w500,
          )),
        ),
      ),
      drawer: Drawer(
        clipBehavior: Clip.none,
        backgroundColor: primaryColor,
        child: Column(
          children: [
            const SizedBox(height: 220),
            ListTile(
              leading: const Icon(Icons.settings_backup_restore),
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
              leading: const Icon(Icons.calculate_rounded),
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
              leading: const Icon(Icons.follow_the_signs),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Expanded(
                  child: MyDivider(
                    indent: 350,
                    endIndent: 10,
                    height: 5,
                    thickness: 0.6,
                  ),
                ),
                Text(
                  " Mekan Seçiniz ",
                  style: dividerarasiyazi,
                ),
                Expanded(
                  child: MyDivider(
                    indent: 10,
                    endIndent: 350,
                    height: 5,
                    thickness: 0.6,
                  ),
                ),
                SizedBox(
                  height: 70,
                )
              ],
            ),
            Row(
              children: [
                SizedBox(width: 100,),
                Flexible(
                  child: Placeholder(
                    fallbackWidth: 100,
                    fallbackHeight: 100,
                  ),
                ),
                SizedBox(width: 100,),
                Flexible(
                  child: Placeholder(
                    fallbackWidth: 100,
                    fallbackHeight: 100,
                  ),
                ),
                SizedBox(width: 100,),
              ],
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                Expanded(
                  child: MyDivider(
                    indent: 350,
                    endIndent: 10,
                    height: 5,
                    thickness: 0.6,
                  ),
                ),
                Text(" Modül Seçiniz ",style: dividerarasiyazi),
                Expanded(
                  child: MyDivider(
                    indent: 10,
                    endIndent: 350,
                    height: 5,
                    thickness: 0.6,
                  ),
                )
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(child: SizedBox(width: 100,)),
                Flexible(
                  child: CustomButton(
                      txt: "50×50 / 50×100",txtColor: passiveButtonTextColor,
                      width: 200,
                      height:50 ,
                      onPressed:onPressedbutton ,
                      isActive: false,
                  ),
                ),
                Flexible(child: SizedBox(width: 50,)),
                Flexible(
                  child: CustomButton(
                    txt: "50×50 / 50×100",txtColor: passiveButtonTextColor,
                    width: 200,
                    height:50 ,
                    onPressed:onPressedbutton ,
                    isActive: false,
                  ),
                ),
                Flexible(child: SizedBox(width: 100,)),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Expanded(
                  child: MyDivider(
                    indent: 350,
                    endIndent: 10,
                    height: 5,
                    thickness: 0.6,
                  ),
                ),
                Text(" Modül Adedi /m Seçiniz ",style: dividerarasiyazi),
                Expanded(
                  child: MyDivider(
                    indent: 10,
                    endIndent: 350,
                    height: 5,
                    thickness: 0.6,
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("(Adet veya Alan Giriniz)"),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("50×50",style: TextStyle(color: primaryColor),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 100,),
                Flexible(
                  child: CustomButton(
                    txt: "Adet : 2",txtColor: passiveButtonTextColor,
                    width: 100,
                    height: 30,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Yükseklik",
                                style: GoogleFonts.manrope(
                                  fontSize: 25,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w500,
                                )),
                            content: SizedBox(
                              height: 200,
                              width: 150,
                              child: ListView.builder(
                                  itemCount: 71,
                                  itemBuilder: (context, index) {
                                    return Text(
                                      "96",
                                      style: GoogleFonts.manrope(
                                        fontSize: 17,
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    );
                                  }),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  //alert dialog kapansın
                                },
                                child: Text(
                                  "go back",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    isActive: false,
                  ),
                ),
                Text("  /  "),
                Flexible(
                  child: CustomButton(
                    txt: " m² : 0", txtColor: passiveButtonTextColor,
                    width: 100,
                    height: 30,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Yükseklik",
                                style: GoogleFonts.manrope(
                                  fontSize: 25,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w500,
                                )),
                            content: SizedBox(
                              height: 200,
                              width: 150,
                              child: ListView.builder(
                                  itemCount: 71,
                                  itemBuilder: (context, index) {
                                    return Text(
                                      "96",
                                      style: GoogleFonts.manrope(
                                        fontSize: 17,
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    );
                                  }),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  //alert dialog kapansın
                                },
                                child: Text(
                                  "go back",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    isActive: false,
                  ),
                ),
                SizedBox(width: 100,),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("50×50",style: TextStyle(color: primaryColor),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //SizedBox(width: 100,),
                Flexible(
                  child: CustomButton(
                    txt: "Adet : 2",txtColor: passiveButtonTextColor,
                    width: 100,
                    height: 30,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Yükseklik",
                                style: GoogleFonts.manrope(
                                  fontSize: 25,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w500,
                                )),
                            content: SizedBox(
                              height: 200,
                              width: 150,
                              child: ListView.builder(
                                  itemCount: 71,
                                  itemBuilder: (context, index) {
                                    return Text(
                                      "96",
                                      style: GoogleFonts.manrope(
                                        fontSize: 17,
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    );
                                  }),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  //alert dialog kapansın
                                },
                                child: Text(
                                  "go back",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    isActive: false,
                  ),
                ),
                Text("  /  "),
                Flexible(
                  child: CustomButton(
                    txt: " m² : 0",txtColor: passiveButtonTextColor,
                    width: 100,
                    height: 30,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Yükseklik",
                                style: GoogleFonts.manrope(
                                  fontSize: 25,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w500,
                                )),
                            content: SizedBox(
                              height: 200,
                              width: 150,
                              child: ListView.builder(
                                  itemCount: 71,
                                  itemBuilder: (context, index) {
                                    return Text(
                                      "96",
                                      style: GoogleFonts.manrope(
                                        fontSize: 17,
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    );
                                  }),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  //alert dialog kapansın
                                },
                                child: Text(
                                  "go back",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    isActive: false,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  txt: "devam et",
                  width:120 ,
                  height: 50,
                  onPressed:(){
                    Get.to(UcuncuFiyatGuncelle());
                  },
                  isActive:true ,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
