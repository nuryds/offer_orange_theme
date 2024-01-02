import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:offer_orange_theme/component/custom_textfield.dart';
import 'package:offer_orange_theme/component/my_appbar.dart';
import 'package:offer_orange_theme/constant/colors.dart';
import 'package:offer_orange_theme/constant/styles.dart';

import 'component/custom_button.dart';

class MusteriGirisSayfasi extends StatelessWidget {
  MusteriGirisSayfasi({super.key});

  bool _isObscure = true;

  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/ledajans_musteri_giris.png"),
                fit: BoxFit.cover,
              ),
              color: Colors.transparent,
            ),
            child: Stack(
              children: [],
            ),
          ),
          //Positioned.fill(child:Container(
            //color: Colors.black12,
          //) ),
          BackdropFilter(filter:ImageFilter.blur(sigmaY: 5,sigmaX: 5,),child: Container(
            color: Colors.orange.withOpacity(0.2),
          ), ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: SizedBox(
                width: 350,
                height: 65,
                child: TextField(
                  controller: usernamecontroller,
                  decoration: InputDecoration(
                    hintText: 'E - mail adresi',
                    hintStyle: TextStyle(color:musterigirishinttextrengi),
                    fillColor: profileCardColor,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: profileCardColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: primaryColor), // Odaklandığında çerçeve rengi
                    ),
                  ),
                ),
              )
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 350,
                height: 65,
                child: TextField(
                  controller: passwordcontroller,
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    hintText: 'Şifre',
                    hintStyle: TextStyle(color: musterigirishinttextrengi),
                    fillColor: profileCardColor,
                    filled: true,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Icon(Icons.remove_red_eye,color: musterigirishinttextrengi),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: profileCardColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: primaryColor), // Odaklandığında çerçeve rengi
                    ),
                  ),
                ),
              ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(child: SizedBox(width: 200,)),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text("Şifreni mi unuttun ?",style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    height: 1,
                  ),),
                ),
              ],
            ),
              SizedBox(height: 109,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    txt: " Hesapla ",
                    txtSize: 20,
                    width: 316 ,
                    height: 60,
                    onPressed:(){

                    },
                    isActive:true ,),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
