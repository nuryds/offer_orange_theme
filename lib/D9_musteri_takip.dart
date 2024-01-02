import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:offer_orange_theme/component/expansion_list.dart';
import 'package:offer_orange_theme/component/my_appbar.dart';
import 'package:offer_orange_theme/constant/styles.dart';
import 'package:offer_orange_theme/expandable_listwiew2.dart';

import 'component/my_drawer.dart';
import 'constant/colors.dart';
// import 'D1_fiyat_guncelle.dart';

class MusteriTakip extends StatefulWidget {
  const MusteriTakip({super.key});

  @override
  State<MusteriTakip> createState() => _MusteriTakipState();
}

class _MusteriTakipState extends State<MusteriTakip> {

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.sizeOf(context).width;



    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: MyAppbar(baslik: 'Müşteri Takip',),
      drawer: MyDrawer(),
      body:screenwidth > 550 ?
      Column(
        children: [
          const SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                  border: TableBorder.all(color: Colors.blueGrey),
                  sortColumnIndex: 0,
                  sortAscending: true,
                  columns:[
                    DataColumn(label: Text("Müşteri Adı / Soyadı",style: tablobaslik)),
                    DataColumn(label: Text("Firma Adı",style: tablobaslik)),
                    DataColumn(label: Text("E-mail Adresi",style: tablobaslik)),
                    DataColumn(label: Text("Telefon Num.",style: tablobaslik)),
                    DataColumn(label: Text("Teklif Durumu",style: tablobaslik),
                      numeric: true,

                    ),
                  ],
                  rows:[
                    DataRow(cells: [
                          DataCell(Text("Mahmut Kara",style: tablodatayazitipi),),
                      DataCell(Text("Ledeksan",style: tablodatayazitipi,),),
                      DataCell(Text("Ledeksanm@gmail.com",style: tablodatayazitipi,),),
                      DataCell(Text("05055550500",style:tablodatayazitipi,),),
                      DataCell(
                           Row(
                             children: [
                               Container(
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
                               const SizedBox(width: 10,),
                               SizedBox(
                                 width: 10,
                                 height: 9,
                                 child: SvgPicture.asset("assets/icons/vector32.svg",colorFilter: const ColorFilter.mode(passiveButtonTextColor,BlendMode.srcIn),width: 9,
                                     height: 14),
                               ),
                             ],
                           ),
                      ),
                        ]
                    ),


                    DataRow(cells: [
                      DataCell(Text("Mahmut Kara",style: tablodatayazitipi),),
                      DataCell(Text("Ledeksan",style: tablodatayazitipi,),),
                      DataCell(Text("Ledeksanm@gmail.com",style: tablodatayazitipi,),),
                      DataCell(Text("05055550500",style:tablodatayazitipi,),),
                      DataCell(
                        Row(
                          children: [
                            Container(
                              width: 139,
                              height: 35,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFC47002),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Center(child: Text("Bekleniyor",style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w500,
                                height: 0.11,
                              ),)),
                            ),
                            const SizedBox(width: 10,),
                            SizedBox(
                              width: 10,
                              height: 9,
                              child: SvgPicture.asset("assets/icons/vector32.svg",colorFilter: const ColorFilter.mode(passiveButtonTextColor,BlendMode.srcIn),width: 9,
                                  height: 14),
                            ),
                          ],
                        ),
                      ),
                    ]
                    ),


                    DataRow(cells: [
                      DataCell(Text("Mahmut Kara",style: tablodatayazitipi),),
                      DataCell(Text("Ledeksan",style: tablodatayazitipi,),),
                      DataCell(Text("Ledeksanm@gmail.com",style: tablodatayazitipi,),),
                      DataCell(Text("05055550500",style:tablodatayazitipi,),),
                      DataCell(
                        Row(
                          children: [
                            Container(
                              width: 139,
                              height: 35,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFC20000),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Center(child: Text("İptal Edildi",style:TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w500,
                                height: 0.11,
                              ),)),
                            ),
                            const SizedBox(width: 10,),
                            SizedBox(
                              width: 10,
                              height: 9,
                              child: SvgPicture.asset("assets/icons/vector32.svg",colorFilter: const ColorFilter.mode(passiveButtonTextColor,BlendMode.srcIn),width: 9,
                                  height: 14),
                            ),
                          ],
                        ),
                      ),
                    ]
                    ),

                  ] ),
            ),
          )
        ],
      ): Expansionpage(),
    );
  }
}

