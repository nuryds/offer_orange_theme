import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:offer_orange_theme/constant/styles.dart';
import 'package:offer_orange_theme/teklif_hesapla_rental_led_tablo.dart';
import 'package:offer_orange_theme/ucuncu_fiyat_guncelle.dart';

import 'component/custom_button.dart';
import 'component/custom_divider.dart';
import 'constant/colors.dart';
import 'kabinli_led_teklif_hesapla.dart';
import 'normal_led_teklif_hesapla.dart';

class RentalLedTeklifHesapla extends StatefulWidget {
  const RentalLedTeklifHesapla({super.key});

  @override
  State<RentalLedTeklifHesapla> createState() => _RentalLedTeklifHesaplaState();
}

class _RentalLedTeklifHesaplaState extends State<RentalLedTeklifHesapla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.to( KabinliLedTeklifHesapla());

          }, icon:  Icon(Icons.arrow_back,color: Colors.white),

        ),
        actions: [
          IconButton(
            onPressed:(){
              Get.to( RentalLedTeklifHesaplaTablo());
            },
            icon: Icon(Icons.exit_to_app,color: Colors.white),
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
      body: Column(
        children: [
          SizedBox(
            height: 75,
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
                " Boyut Seçiniz ",
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
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("50 cm",style: TextStyle(fontSize: 13,color: primaryColor),),
              SizedBox(width: 25,),
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
            ],
          ),
          SizedBox(height: 50,),
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
                " Modül Seçiniz ",
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
            ],
          ),
          SizedBox(height: 50,),
          Row(
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
          SizedBox(height: 250,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                txt: " Hesapla ",
                txtSize: 20,
                width: 180 ,
                height: 50,
                onPressed:(){
                  Get.to(RentalLedTeklifHesaplaTablo());
                },
                isActive:true ,),
            ],
          ),
        ],
      ),
    );
  }
}
