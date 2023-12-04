import 'package:flutter/material.dart';

import '../constant/colors.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.txt,
    this.txtSize,
    required this.width,
    required this.height,
    this.txtColor = primaryColor,     // appbar color degişti
    this.activeColor = primaryColor,
    this.passiveColor = backgroundColor,
    this.borderRadius,
    this.activebuttonTxtColor,
    this.passivebuttonTxtColor,


    required this.onPressed,
    this.paddingSize = 8.0,
    required this.isActive,
  }) : super(key: key);

  final String txt;
  final double? txtSize;
  final double width;
  final double height;
  final Color txtColor;
  final Color? activebuttonTxtColor;   // buton aktifken text rengi eklendi
  final Color? passivebuttonTxtColor;        // buton pasifken text rengi eklendi
  final Color activeColor;
  final Color passiveColor;
  final GestureTapCallback onPressed;
  final double paddingSize;
  final bool isActive;
  final BorderRadius? borderRadius ;   //opsiyonel borderradius

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.all(paddingSize),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: isActive ? activeColor : passiveColor,
              borderRadius: borderRadius ?? BorderRadius.circular(6),    // 12 idi 6 yapıldı
              border: Border.all(width: 1, color: activeColor)),
          child: Center(
              child: Text(
                txt,
                style: TextStyle(color: isActive ? Colors.white : txtColor,fontSize: txtSize),   // fontsize tanımlandı
                textAlign: TextAlign.center,

              )),
        ),
      ),
    );
  }
}
