import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:offer_orange_theme/teklif_hesapla.dart';

import 'component/custom_button.dart';
import 'component/custom_divider.dart';
import 'constant/colors.dart';
import 'constant/styles.dart';
import 'controller/checkbox_controller.dart';
import 'ikinci_fiyat_guncelle.dart';
import 'musteri_takip.dart';
import 'normal_led_teklif_hesapla.dart';

class TeklifHesaplaNormalLedMusteri extends StatefulWidget {
  const TeklifHesaplaNormalLedMusteri({super.key});

  @override
  State<TeklifHesaplaNormalLedMusteri> createState() => _TeklifHesaplaNormalLedMusteriState();
}

class _TeklifHesaplaNormalLedMusteriState extends State<TeklifHesaplaNormalLedMusteri> {
  final CheckBoxController _ctrl = Get.put(CheckBoxController());


  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      key: scaffoldKey,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              //nereye gidecek
            },
            icon: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset("assets/icons/ileri_icon.svg",colorFilter: const ColorFilter.mode(profileCardColor,BlendMode.srcIn),width: 26,
                  height: 23),
            ),
          ),
        ],
        backgroundColor: primaryColor,
        title: const Center(
          child: Text(
            "Teklif Hesapla /Normal LED",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
          ),
        ),
      ),
      drawer: Drawer(
        clipBehavior: Clip.none,
        backgroundColor: primaryColor,
        child: Column(
          children: [
            const SizedBox(height: 220),
            ListTile(
              leading: SvgPicture.asset("assets/icons/fiyat_guncelle.svg",colorFilter:const ColorFilter.mode(profileCardColor,BlendMode.srcIn),width: 30,height: 30,),
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
              leading: SvgPicture.asset("assets/icons/teklif_hesapla.svg",colorFilter:const ColorFilter.mode(profileCardColor,BlendMode.srcIn),width: 30,height: 30,),
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
              leading:  SvgPicture.asset("assets/icons/musteri_takip.svg",colorFilter:const ColorFilter.mode(profileCardColor,BlendMode.srcIn),width: 30,height: 30,),
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
      body: Column(
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(child: SizedBox(width: 100,)),
                      Stack(
                        children: [
                          GestureDetector(
                            onTap: (){

                            },
                              child: Image.asset("assets/images/ic_mekan.png")),
                          Positioned(
                            bottom: 40,
                              left: 40,
                              child:AnimatedTextKit(
                                animatedTexts: [
                                  RotateAnimatedText('İç Mekan',textStyle:const TextStyle( color:passiveButtonTextColor,
                                    fontSize: 18,
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w700,
                                    height: 0.09,),
                                    duration: const Duration(seconds: 10),
                                    rotateOut: true
                                  )
                                ],
                              )
                          ),
                        ],
                      ),
                      const Flexible(child: SizedBox(width: 200,)),
                      Stack(
                        children: [
                          Image.asset("assets/images/dis_mekan.png"),
                          Positioned(
                              bottom: 65,
                              left: 40,
                              child:AnimatedTextKit(
                                animatedTexts: [
                                  ScaleAnimatedText('Dış Mekan',textStyle:const TextStyle( color: passiveButtonTextColor,
                                    fontSize: 16,
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w700,
                                    height: 0.09,),
                                    scalingFactor: 2,
                                    duration: const Duration(seconds: 10),
                                  )
                                ],
                              ),
                          ),
                        ],
                      ),
                      const Expanded(child: SizedBox(width: 100,)),


                    ],
                  ),
                  const SizedBox(height: 35,),
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
                  const SizedBox(height: 10,),
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
                  const SizedBox(height: 25,),
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
                                    child:const Text("go back",style:TextStyle(fontWeight: FontWeight.bold),) ,
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
                  const SizedBox(height: 25,),
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

                      Text("Kasa ve Montaj Türü Seçiniz ",style: dividerarasiyazi),
                      const Expanded(
                        child:MyDivider(
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
                  const SizedBox(height: 45),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          SvgPicture.asset("assets/icons/whatsapp_icon.svg",colorFilter: const ColorFilter.mode(Colors.transparent,BlendMode.srcIn),width: 45,
                              height: 45),
                          const SizedBox(height: 15,),
                          const Text("Watsapp ile Sor", textAlign: TextAlign.center,
                            style: TextStyle(
                              color: secondaryColor,
                              fontSize: 14,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w500,
                              height: 0.11,
                            ),),
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset("assets/icons/e_mail_icon.svg",colorFilter: const ColorFilter.mode(secondaryColor,BlendMode.srcIn),width: 30,
                              height: 26),
                          const SizedBox(height: 30,),
                          const Text("E-mail Gönder", textAlign: TextAlign.center,
                            style: TextStyle(
                              color: secondaryColor,
                              fontSize: 14,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w500,
                              height: 0.11,
                            ),),
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset("assets/icons/arama_icon.svg",colorFilter: const ColorFilter.mode(Colors.transparent,BlendMode.srcIn),width: 30,
                              height: 30),
                          const SizedBox(height: 20,),
                          const Text("Sizi Arayalım", textAlign: TextAlign.center,
                            style: TextStyle(
                              color: secondaryColor,
                              fontSize: 14,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w500,
                              height: 0.11,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ],
              )
          ),
        ],
      )
    );
  }
}
