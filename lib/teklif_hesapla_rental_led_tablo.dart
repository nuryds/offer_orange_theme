import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:offer_orange_theme/constant/styles.dart';
import 'package:offer_orange_theme/musteri_takip.dart';
import 'constant/colors.dart';
import 'kabinli_led_teklif_hesapla.dart';

class RentalLedTeklifHesaplaTablo extends StatefulWidget {
  const RentalLedTeklifHesaplaTablo({super.key});

  @override
  State<RentalLedTeklifHesaplaTablo> createState() =>
      _RentalLedTeklifHesaplaTabloState();
}

class _RentalLedTeklifHesaplaTabloState
    extends State<RentalLedTeklifHesaplaTablo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.to(const KabinliLedTeklifHesapla());
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(const MusteriTakip());
            },
            icon: const Icon(Icons.exit_to_app, color: Colors.white),
          ),
        ],
        backgroundColor: primaryColor,
        title: Center(
          child: Text("Teklif Hesapla / Rental Led (Tablo) ",
              style: GoogleFonts.manrope(
                fontSize: 23,
                color: onPrimaryTextColor,
                fontWeight: FontWeight.w500,
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " Teklif Özeti ",
                  style: TextStyle(
                    color: Color(0xFFF46F2C),
                    fontSize: 20,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w700,
                    height: 0.09,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Container(
                    width: 800,
                    height: 400,
                    color: profileCardColor,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: DataTable(
                                    border: TableBorder.symmetric(
                                        inside:
                                            const BorderSide(color: Colors.grey)),
                                    // border: TableBorder.symmetric(outside: BorderSide()),
                                    // border: TableBorder.all(color: Colors.blueGrey,width: 0.5),
                                    sortColumnIndex: 0,
                                    decoration: const BoxDecoration(border: Border(bottom: BorderSide(width: 1,color: Colors.grey))),
                                    columnSpacing: 30,
                                    sortAscending: true,
                                    columns: [
                                      DataColumn(
                                          label: Text("P 2,9 indoor",
                                              style: tablobaslik)),
                                      DataColumn(
                                          label:
                                              Text("Adet", style: tablobaslik)),
                                      DataColumn(
                                          label: Text("Birim Fiyatı",
                                              style: tablobaslik)),
                                      DataColumn(
                                        label: Text("Teklif Durumu",
                                            style: tablobaslik),
                                        numeric: true,
                                      ),
                                    ],
                                    rows: [
                                      DataRow(cells: [
                                        DataCell(
                                          Text("50×50 Rental Modül Fiyatı",
                                              style: tablodatayazitipi),
                                        ),
                                        DataCell(
                                          Center(
                                              child: Text(
                                            "4",
                                            style: tablodatayazitipi,
                                          )),
                                        ),
                                        DataCell(
                                          Center(
                                              child: Text(
                                            "500.00",
                                            style: tablodatayazitipi,
                                          )),
                                        ),
                                        DataCell(
                                          Center(
                                              child: Text(
                                            "2,000.00",
                                            style: tablodatayazitipi,
                                          )),
                                        ),
                                      ]),
                                      DataRow(cells: [
                                        DataCell(
                                          Text("50×50 Hanging Fiyatı",
                                              style: tablodatayazitipi),
                                        ),
                                        DataCell(
                                          Center(
                                              child: Text(
                                            "0",
                                            style: tablodatayazitipi,
                                          )),
                                        ),
                                        DataCell(
                                          Center(
                                              child: Text(
                                            "45.00",
                                            style: tablodatayazitipi,
                                          )),
                                        ),
                                        DataCell(
                                          Center(
                                              child: Text(
                                            "0.00",
                                            style: tablodatayazitipi,
                                          )),
                                        ),
                                      ]),
                                      DataRow(cells: [
                                        DataCell(
                                          Text("Sending: VX600 All in one",
                                              style: tablodatayazitipi),
                                        ),
                                        DataCell(
                                          Center(
                                              child: Text(
                                            "1",
                                            style: tablodatayazitipi,
                                          )),
                                        ),
                                        DataCell(
                                          Center(
                                              child: Text(
                                            "1,600.00",
                                            style: tablodatayazitipi,
                                          )),
                                        ),
                                        DataCell(
                                          Center(
                                              child: Text(
                                            "1,600.00",
                                            style: tablodatayazitipi,
                                          )),
                                        ),
                                      ]),
                                    ]),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Bitmiş Ürün Fiyatı",
                                      style: tablobaslik,
                                    ),
                                    //SizedBox(width: 300,),
                                    Text(
                                      "3,600.00",
                                      style: tablobaslik,
                                    ),
                                  ],
                                ),
                              ),
                             const Divider(
                               color: Colors.blueGrey,
                               height: 20,
                               thickness: 5,
                               indent: 30,
                               endIndent: 30,
                             ),
                              const SizedBox(height: 10,),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:EdgeInsets.only(left: 25),
                                    child: Text("Not: Pixel alanı: 112896 , Metrekare:1.00"),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
