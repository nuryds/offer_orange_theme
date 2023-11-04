import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offer_orange_theme/constant/colors.dart';
import 'package:offer_orange_theme/controller/checkbox_controller.dart';
import 'package:offer_orange_theme/fiyat_guncelle.dart';
import 'package:offer_orange_theme/ikinci_fiyat_guncelle.dart';

import 'component/custom_button.dart';
import 'component/custom_divider.dart';
import 'normal_led_teklif_hesapla.dart';


class KabinliLedTeklifHesapla extends StatefulWidget {
  const KabinliLedTeklifHesapla({super.key});

  @override
  State<KabinliLedTeklifHesapla> createState() => _KabinliLedTeklifHesaplaState();
}

class _KabinliLedTeklifHesaplaState extends State<KabinliLedTeklifHesapla> {
  final bool customIcon =false;    // ExpansionTile widgettakı duruma göre değişen ikon
  final CheckBoxController _ctrl =Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.to(const FiyatGuncelle());
          }, icon: const Icon(Icons.arrow_back,color: Colors.white),

        ),
        actions: [
          IconButton(
            onPressed:(){
              Get.to(const IkinciFiyatGuncelle());
            },
            icon: const Icon(Icons.exit_to_app,color: Colors.white),
          ),
        ],
        backgroundColor: appbarColor,
        title: const Center(
          child: Text("Kabinli Led Teklif Hesapla",style:TextStyle(color: Colors.white,fontWeight: FontWeight.w300),
          ),
        ),
      ),
      body: Center(
          child: Column(
              children: [
                SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      child: MyDivider(
                        indent: 350,
                        endIndent: 40,
                        height: 5,
                        thickness: 0.6,
                      ),
                    ),
                    Text(" Mekan Seçiniz ",style: TextStyle(color: buttonActiveColor),),
                    Expanded(
                      child: MyDivider(
                        indent: 40,
                        endIndent: 350,
                        height: 5,
                        thickness: 0.6,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //SizedBox(width: 100,),
                    Placeholder(
                      fallbackHeight: 150,
                      fallbackWidth: 300,
                      color:buttonActiveColor,
                    ),
                    SizedBox(width: 300,),
                    Placeholder(
                      fallbackHeight: 150,
                      fallbackWidth: 300,
                      color:buttonActiveColor,
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      child: MyDivider(
                        indent: 350,
                        endIndent: 40,
                        height: 5,
                        thickness: 0.6,
                      ),
                    ),
                    Text(" Modül Seçiniz ",style: TextStyle(color: buttonActiveColor),),
                    Expanded(
                      child: MyDivider(
                        indent: 40,
                        endIndent: 350,
                        height: 5,
                        thickness: 0.6,
                      ),
                    )
                  ],
                ),
                SizedBox(height:30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      txt: "P 1,86",
                      width: 90,
                      height: 30,
                      onPressed: onPressedCustomButton ,
                      isActive: false,
                      activebuttonTxtColor: activeButtonTextColor,
                      passivebuttonTxtColor: passiveButtonTextColor,
                      // borderRadius:,
                    ),
                    CustomButton(
                      txt: "P 1,86",
                      width: 90,
                      height: 30,
                      onPressed: onPressedCustomButton ,
                      isActive: false,
                      activebuttonTxtColor: activeButtonTextColor,
                      passivebuttonTxtColor: passiveButtonTextColor,
                    ),
                    CustomButton(
                      txt: "P 1,86",
                      width: 90,
                      height: 30,
                      onPressed: onPressedCustomButton ,
                      isActive: true,
                      activebuttonTxtColor: activeButtonTextColor,
                      passivebuttonTxtColor: passiveButtonTextColor,
                    ),
                    CustomButton(
                      txt: "P 1,86",
                      width: 90,
                      height: 30,
                      onPressed: onPressedCustomButton ,
                      isActive: false,
                      activebuttonTxtColor: activeButtonTextColor,
                      passivebuttonTxtColor: passiveButtonTextColor,
                    ),
                    CustomButton(
                      txt: "P 1,86",
                      width: 90,
                      height: 30,
                      onPressed: onPressedCustomButton ,
                      isActive: true,
                      activebuttonTxtColor: activeButtonTextColor,
                      passivebuttonTxtColor: passiveButtonTextColor,
                    ),

                  ],
                ),
                SizedBox(height: 50,),
                Row(
                  children: [
                    Expanded(
                      child: MyDivider(
                        indent: 350,
                        endIndent: 40,
                        height: 5,
                        thickness: 0.6,
                      ),
                    ),
                    Text(" Boyut Seçiniz ",style: TextStyle(color: buttonActiveColor),),
                    Expanded(
                      child: MyDivider(
                        indent: 40,
                        endIndent: 350,
                        height: 5,
                        thickness: 0.6,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 61,
                      child: Column(
                        children: [
                          Card(
                            color: Colors.white,
                            //elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(
                                  color: appbarColor,width: 1
                              ),
                            ),
                            child: ExpansionTile(
                              backgroundColor: Colors.white,
                              title: SizedBox(
                                height: 35,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: Text("Yükseklik : 0"),
                                ),
                              ),
                              trailing:Icon( customIcon ? Icons.arrow_drop_up : Icons.arrow_drop_down_sharp,) ,
                              children: [
                                Column(
                                  children:[
                                    ListTile(
                                      onTap:onTapListtile,
                                      title: Text("hdhdhhd"),
                                    ),
                                    ListTile(
                                      onTap:onTapListtile,
                                      title: Text("hdhdhhd"),
                                    ),
                                    ListTile(
                                      onTap:onTapListtile,
                                      title: Text("hdhdhhd"),
                                    ),
                                    ListTile(
                                      onTap: onTapListtile,
                                      title: Text("hdhdhhd"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Obx( () =>
                              CheckboxListTile(
                                activeColor: appbarColor,
                                tristate: true,
                                title: Text("HDIM"),
                                value: _ctrl.checkbool.value,
                                onChanged:(value){
                                  _ctrl.checkbool.value= !_ctrl.checkbool.value;
                                },
                              ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 50,),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: Card(
                        color: Colors.white,
                        //elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(
                              color: appbarColor,width: 1
                          ),
                        ),
                        child: ExpansionTile(
                          backgroundColor: Colors.white,
                          title: SizedBox(
                            height: 35,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text("Genişlik : 0"),
                            ),
                          ),
                          trailing:Icon( customIcon ? Icons.arrow_drop_up : Icons.arrow_drop_down_sharp,) ,
                          children: [
                            ListTile(
                              onTap:onTapListtile,
                              title: Text("hdhdhhd"),
                            ),
                            ListTile(
                              onTap:onTapListtile,
                              title: Text("hdhdhhd"),
                            ),
                            ListTile(
                              onTap:onTapListtile,
                              title: Text("hdhdhhd"),
                            ),
                            ListTile(
                              onTap: onTapListtile,
                              title: Text("hdhdhhd"),
                            ),
                          ],
                          onExpansionChanged: (bool expanded) {},
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 100,),
                Row(
                  children: [
                    Expanded(
                      child: MyDivider(
                        indent: 350,
                        endIndent: 40,
                        height: 5,
                        thickness: 0.6,
                      ),
                    ),
                    Text(" Karkas Tipini Seçiniz ",style: TextStyle(color: buttonActiveColor),),
                    Expanded(
                      child: MyDivider(
                        indent: 40,
                        endIndent: 350,
                        height: 5,
                        thickness: 0.6,
                      ),
                    )
                  ],
                ),
              ]
          )
      )
    );
  }
}