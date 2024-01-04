import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:offer_orange_theme/component/my_appbar.dart';
import 'package:offer_orange_theme/constant/styles.dart';
import 'package:offer_orange_theme/D8_teklif_hesapla_rental_led_tablo.dart';
import 'component/custom_button.dart';
import 'component/custom_divider.dart';
import 'component/my_drawer.dart';
import 'constant/colors.dart';
import 'D3_kabinli_led_teklif_hesapla.dart';
import 'D4_normal_led_teklif_hesapla.dart';

class RentalLedTeklifHesapla extends StatefulWidget {
  const RentalLedTeklifHesapla({super.key});

  @override
  State<RentalLedTeklifHesapla> createState() => _RentalLedTeklifHesaplaState();
}

class _RentalLedTeklifHesaplaState extends State<RentalLedTeklifHesapla> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: backgroundColor,
      appBar: MyAppbar(scaffoldKey: scaffoldKey,baslik: 'Teklif Hesapla/Rental Led',),
      drawer: MyDrawer(),
      body: Column(
        children: [
          const SizedBox(
            height: 75,
          ),
          Row(
            children: [
              const Expanded(
                child:MyDivider(
                  indent: 350,
                  endIndent: 10,
                  height: 5,
                  thickness: 0.6,
                ),
              ),
              Text(
                " Boyut Seçiniz ",
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
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("50 cm",style: TextStyle(fontSize: 13,color: primaryColor),),
              const SizedBox(width: 25,),
              CustomButton(
                txt: "Adet : 2",txtColor: passiveButtonTextColor,
                width: 150,
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
            ],
          ),
          const SizedBox(height: 50,),
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
                " Modül Seçiniz ",
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
            ],
          ),
          const SizedBox(height: 50,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                txt: "P 1,86",txtColor: passiveButtonTextColor,
                width: 90,
                height: 30,
                onPressed: onPressedCustomButton,
                isActive: false,
                activebuttonTxtColor: onPrimaryTextColor,
                passivebuttonTxtColor: passiveButtonTextColor,
              ),CustomButton(
                txt: "P 1,86",txtColor: passiveButtonTextColor,
                width: 90,
                height: 30,
                onPressed: onPressedCustomButton,
                isActive: false,
                activebuttonTxtColor: onPrimaryTextColor,
                passivebuttonTxtColor: passiveButtonTextColor,
              ),CustomButton(
                txt: "P 1,86",txtColor: passiveButtonTextColor,
                width: 90,
                height: 30,
                onPressed: onPressedCustomButton,
                isActive: false,
                activebuttonTxtColor: onPrimaryTextColor,
                passivebuttonTxtColor: passiveButtonTextColor,
              ),
            ],
          ),
          const SizedBox(height: 250,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                txt: " Hesapla ",
                txtSize: 20,
                width: 180 ,
                height: 50,
                onPressed:(){
                  Get.to(const RentalLedTeklifHesaplaTablo());
                },
                isActive:true ,),
            ],
          ),
        ],
      ),
    );
  }
}
