//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:offer_orange_theme/component/my_appbar.dart';
import 'package:offer_orange_theme/constant/styles.dart';
import 'package:offer_orange_theme/D2_teklif_hesapla.dart';
import 'package:offer_orange_theme/ucuncu_fiyat_guncelle.dart';
import 'component/custom_button.dart';
import 'component/custom_divider.dart';
import 'component/my_drawer.dart';
import 'constant/colors.dart';
import 'D6_ikinci_fiyat_guncelle.dart';
import 'D9_musteri_takip.dart';

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
       key: scaffoldKey,
       backgroundColor: backgroundColor,
       appBar: MyAppbar(scaffoldKey: scaffoldKey,baslik: 'Teklif Hesapla/Rental Led',),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                const Expanded(
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
                const Expanded(
                  child: MyDivider(
                    indent: 10,
                    endIndent: 350,
                    height: 5,
                    thickness: 0.6,
                  ),
                ),
                const SizedBox(
                  height: 70,
                )
              ],
            ),
            const Row(
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
            const SizedBox(height: 40,),
            Row(
              children: [
                const Expanded(
                  child: MyDivider(
                    indent: 350,
                    endIndent: 10,
                    height: 5,
                    thickness: 0.6,
                  ),
                ),
                Text(" Modül Seçiniz ",style: dividerarasiyazi),
                const Expanded(
                  child: MyDivider(
                    indent: 10,
                    endIndent: 350,
                    height: 5,
                    thickness: 0.6,
                  ),
                )
              ],
            ),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Flexible(child: SizedBox(width: 100,)),
                Flexible(
                  child: CustomButton(
                      txt: "50×50 / 50×100",txtColor: passiveButtonTextColor,
                      width: 200,
                      height:50 ,
                      onPressed:onPressedbutton ,
                      isActive: false,
                  ),
                ),
                const Flexible(child: SizedBox(width: 50,)),
                Flexible(
                  child: CustomButton(
                    txt: "50×50 / 50×100",txtColor: passiveButtonTextColor,
                    width: 200,
                    height:50 ,
                    onPressed:onPressedbutton ,
                    isActive: false,
                  ),
                ),
                const Flexible(child: SizedBox(width: 100,)),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                const Expanded(
                  child: MyDivider(
                    indent: 350,
                    endIndent: 10,
                    height: 5,
                    thickness: 0.6,
                  ),
                ),
                Text(" Modül Adedi /m Seçiniz ",style: dividerarasiyazi),
                const Expanded(
                  child: MyDivider(
                    indent: 10,
                    endIndent: 350,
                    height: 5,
                    thickness: 0.6,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("(Adet veya Alan Giriniz)"),
              ],
            ),
            const SizedBox(height: 25,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("50×50",style: TextStyle(color: primaryColor),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 100,),
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
                                child: const Text(
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
                const Text("  /  "),
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
                                child: const Text(
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
                const SizedBox(width: 100,),
              ],
            ),
            const SizedBox(height: 25,),
            const Row(
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
                                child: const Text(
                                  "go back",
                                  style:TextStyle(fontWeight: FontWeight.bold),
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
                const Text("  /  "),
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
                                child: const Text(
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
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  txt: "devam et",
                  width:120 ,
                  height: 50,
                  onPressed:(){
                    Get.to(const UcuncuFiyatGuncelle());
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
