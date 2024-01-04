import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:offer_orange_theme/component/custom_button.dart';
import 'package:offer_orange_theme/component/custom_divider.dart';
import 'package:offer_orange_theme/component/my_appbar.dart';
import 'package:offer_orange_theme/constant/colors.dart';
import 'package:offer_orange_theme/constant/styles.dart';
import 'package:offer_orange_theme/controller/checkbox_controller.dart';
import 'package:offer_orange_theme/D3_kabinli_led_teklif_hesapla.dart';
import 'package:offer_orange_theme/D5_teklif_hesapla_rental_led.dart';

import 'component/my_drawer.dart';


class NormalLedTeklifHesapla extends StatefulWidget {
   NormalLedTeklifHesapla({super.key});

  @override
  State<NormalLedTeklifHesapla> createState() => _NormalLedTeklifHesaplaState();
}


void onPressedCustomButton (){
  // do something
}
void onTapListtile (){

}


class _NormalLedTeklifHesaplaState extends State<NormalLedTeklifHesapla> {


   final CheckBoxController _ctrl = Get.put(CheckBoxController());

   final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
   @override
   Widget build(BuildContext context) {
     return Scaffold(
         key: scaffoldKey,
         backgroundColor: backgroundColor,
         appBar: MyAppbar(scaffoldKey: scaffoldKey,baslik: 'Teklif Hesapla/Normal Led',),
        drawer: MyDrawer(),
      body:
      Column(
        children: [
          const SizedBox(height: 25,),
          Expanded(
              child: ListView(
                children: [
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
                      Text(" Mekan Seçiniz ",style: dividerarasiyazi),
                      const Expanded(
                        child: MyDivider(
                          indent: 10,
                          endIndent: 350,
                          height: 5,
                          thickness: 0.6,
                        ),
                      ),
                      const SizedBox(height:70 ,)
                    ],
                  ),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 100),
                       Placeholder(
                        fallbackHeight: 100,
                        fallbackWidth: 100,
                        color:profileCardColor,
                      ),
                       Flexible(child:SizedBox(width: 200,)),
                      //SvgPicture.asset("assets/rectangle16.svg"),
                       SizedBox(width: 100),
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
                  const SizedBox(height: 45,),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomButton(
                                  txt: "P 1,86",
                                  width: 90,
                                  height: 30,
                                  onPressed: onPressedCustomButton ,
                                  isActive: false,
                                  activebuttonTxtColor: onPrimaryTextColor,
                                  passivebuttonTxtColor: passiveButtonTextColor,
                                ),
                          SizedBox(width: 1),
                          CustomButton(
                            txt: "P 2",
                            width: 90,
                            height: 30,
                            onPressed: onPressedCustomButton ,
                            isActive: false,
                            activebuttonTxtColor: onPrimaryTextColor,
                            passivebuttonTxtColor: passiveButtonTextColor,
                          ),
                          SizedBox(width: 1),
                          CustomButton(
                            txt: "P 2.5",
                            width: 90,
                            height: 30,
                            onPressed: onPressedCustomButton ,
                            isActive: false,
                            activebuttonTxtColor: onPrimaryTextColor,
                            passivebuttonTxtColor: passiveButtonTextColor,
                          ),
                          SizedBox(width: 1),
                          CustomButton(
                            txt: "P 4",
                            width: 90,
                            height: 30,
                            onPressed: onPressedCustomButton ,
                            isActive: false,
                            activebuttonTxtColor: onPrimaryTextColor,
                            passivebuttonTxtColor: passiveButtonTextColor,
                          ),
                          SizedBox(width: 1),
                          CustomButton(
                            txt: "P 5",
                            width: 90,
                            height: 30,
                            onPressed: onPressedCustomButton ,
                            isActive: false,
                            activebuttonTxtColor:onPrimaryTextColor,
                            passivebuttonTxtColor: passiveButtonTextColor,
                          ),
                         // SizedBox(width: 1),
                        ],
                      ),
                    ),
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

                      Text(" Boyut Seçiniz ",style: dividerarasiyazi),
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
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        txt:"Yükseklik : 0",
                        width: 100,
                        height: 30,
                        onPressed: (){
                          showDialog(
                            context:context ,
                            builder:(context){
                              return AlertDialog(
                                title: Text("Yükseklik",style:GoogleFonts.manrope(
                                  fontSize: 25,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w500,
                                )),
                                content: SizedBox(
                                  height: 200,
                                  width: 150,
                                  child: ListView.builder(
                                      itemCount: 71,
                                      itemBuilder:(context ,index){
                                        return Text("96",style: GoogleFonts.manrope(
                                          fontSize: 17,
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.w300,
                                        ),);
                                      }),
                                ),
                                actions: [
                                  TextButton(onPressed:() {
                                   Get.back(); //alert dialog kapansın
                                  },
                                    child:const Text("go back",style: TextStyle(fontWeight: FontWeight.bold),) ,
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        isActive: false,
                      ),

                      const SizedBox(width: 150),
                      CustomButton(
                        txt:"Genişlik : 0",
                        width: 100,
                        height: 30,
                        onPressed: (){
                          showDialog(
                            context:context ,
                            builder:(context){
                              return AlertDialog(
                                title: Text("Genişlik",style:GoogleFonts.manrope(
                                  fontSize: 25,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w500,
                                )),
                                content: SizedBox(
                                  height: 200,
                                  width: 150,
                                  child: ListView.builder(
                                    itemCount: 71,
                                      itemBuilder:(context ,index){
                                        return Text("96",style: GoogleFonts.manrope(
                                          fontSize: 17,
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.w300,
                                        ),);
                                      }),
                                ),
                                actions: [
                                  TextButton(onPressed:() {
                                   Get.back(); //alert dialog kapansın
                                  },
                                    child:const Text("go back",style: TextStyle(fontWeight: FontWeight.bold),) ,
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
                  Obx( () =>
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            activeColor: primaryColor,
                            tristate: true,
                            value: _ctrl.checkbool.value,
                            onChanged:(value){
                              _ctrl.checkbool.value= !_ctrl.checkbool.value;
                            },
                          ),
                          Text("HDIM",style:GoogleFonts.manrope(
                            fontSize: 18,
                            color: primaryColor,
                            fontWeight: FontWeight.w400,
                          )
                          ),
                        ],
                      ),
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

                      Text("Kasa ve Montaj Türü Seçiniz ",style: dividerarasiyazi),
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 1),
                      CustomButton(
                        txt: " Vidalı ",
                        width: 120,
                        height: 30,
                        onPressed: onPressedCustomButton ,
                        isActive: false,
                        activebuttonTxtColor: onPrimaryTextColor,
                        passivebuttonTxtColor: passiveButtonTextColor,
                      ),
                      SizedBox(width: 5),
                      CustomButton(
                        txt: " Mıknatıslı ",
                        width: 120,
                        height: 30,
                        onPressed: onPressedCustomButton ,
                        isActive: false,
                        activebuttonTxtColor: onPrimaryTextColor,
                        passivebuttonTxtColor: passiveButtonTextColor,
                      ),
                      SizedBox(width: 5),
                      CustomButton(
                        txt: " MG/Fix",
                        width: 120,
                        height: 30,
                        onPressed: onPressedCustomButton ,
                        isActive: false,
                        activebuttonTxtColor: onPrimaryTextColor,
                        passivebuttonTxtColor: passiveButtonTextColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        txt: " Hesapla ",
                        width: 160,
                        height: 40,
                        onPressed: onPressedCustomButton ,
                        isActive: true,
                        activebuttonTxtColor: onPrimaryTextColor,
                        passivebuttonTxtColor: passiveButtonTextColor,
                      ),
                    ],
                  ),


                ],
              )
          ),
        ],
      )

      /*Center(
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
           Text(" Kasa ve Montaj Türünü Seçiniz ",style: TextStyle(color: buttonActiveColor),),
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
      )*/    //  eski tasarım
    );
  }
}