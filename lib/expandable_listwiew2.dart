import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:offer_orange_theme/component/custom_textfield.dart';
import 'package:offer_orange_theme/constant/colors.dart';

import 'component/custom_button.dart';

class Expansionpage extends StatefulWidget {
   Expansionpage({super.key});


  @override
  State<Expansionpage> createState() => _ExpansionpageState();
}

class _ExpansionpageState extends State<Expansionpage> {

  List <String> name = ['Mahmut Kara','Mahmut Kara'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: ListView.builder(
        itemCount:name.length,
        itemBuilder: (context ,index ){
              return Card(
                color: profileCardColor,
              child:ExpansionTile(
              title: Text(name[index].toString()),
                subtitle: Text("Ledajans"),
                leading:  Container(
                  width: 139,
                  height: 35,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF26C100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Center(child: Text("Sipariş verildi",style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w500,
                    height: 0.11,
                  ),)),
                ),
                children: [
                  Container(
                    height: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("E-mail adresi :",style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w700,
                                height: 0.18,
                              ),),
                              SizedBox(height: 25,),
                              Text("Telefon Numarası : ",style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w700,
                                height: 0.18,
                              ),),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  CustomButton(
                                    txt: "Teklif Yöntemi",txtColor: passiveButtonTextColor,
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
                                  CustomButton(
                                    txt: "Teklif Durumu",txtColor: passiveButtonTextColor,
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
                              Row(
                                children: [
                                  CustomButton(
                                    txt: "Personel Adı",txtColor: passiveButtonTextColor,
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
                              Row(
                                children: [
                                  Container(
                                    color: profileCardColor,
                                    width: 400,
                                    height: 150,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text("Açıklama :"),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              );
      }),
            )
          ],
        ),
      ),
    );
  }
}
