import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:offer_orange_theme/constant/styles.dart';

import 'constant/colors.dart';
// import 'fiyat_guncelle.dart';

class MusteriTakip extends StatefulWidget {
  const MusteriTakip({super.key});

  @override
  State<MusteriTakip> createState() => _MusteriTakipState();
}

class _MusteriTakipState extends State<MusteriTakip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();

          }, icon: const Icon(Icons.arrow_back,color: Colors.white),

        ),
        actions: [
          IconButton(
            onPressed:(){
              //
            },
            icon: const Icon(Icons.exit_to_app,color: Colors.white),
          ),
        ],
        backgroundColor: primaryColor,
        title: const Center(
          child: Text("Müşteri Takip"//,style: appbarbaslik,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 40,),
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
                                 child: Center(child: Text("Sipariş verildi",style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 18,
                                   fontFamily: 'Manrope',
                                   fontWeight: FontWeight.w500,
                                   height: 0.11,
                                 ),)),
                                 width: 139,
                                 height: 35,
                                 decoration: ShapeDecoration(
                                   color: Color(0xFF26C100),
                                   shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                 ),
                               ),
                               SizedBox(width: 10,),
                               Container(
                                 width: 10,
                                 height: 9,
                                 child: Image.asset('lib/icons/vector32.svg',color: passiveButtonTextColor),
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
                        Container(
                          child: Center(child: Text("Bekleniyor",style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w500,
                            height: 0.11,
                          ),)),
                          width: 139,
                          height: 35,
                          decoration: ShapeDecoration(
                            color: Color(0xFFC47002),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
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
                        Container(
                          child: Center(child: Text("İptal Edildi",style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w500,
                            height: 0.11,
                          ),)),
                          width: 139,
                          height: 35,
                          decoration: ShapeDecoration(
                            color: Color(0xFFC20000),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ]
                    ),

                  ] ),
            ),
          )
        ],
      ),
    );
  }
}
