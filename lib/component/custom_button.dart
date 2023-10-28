import 'package:flutter/material.dart';

import '../constant/colors.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.txt,
    this.txtSize,
    required this.width,
    required this.height,
    this.txtColor = appbarColor,     // appbar color degişti
    this.activeColor = buttonActiveColor,
    this.passiveColor = buttonPassiveColor,

    required this.onPressed,
    this.paddingSize = 8.0,
    required this.isActive,
  }) : super(key: key);

  final String txt;
  final double? txtSize;
  final double width;
  final double height;
  final Color txtColor;
  final Color activeColor;
  final Color passiveColor;
  final GestureTapCallback onPressed;
  final double paddingSize;
  final bool isActive;

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
              borderRadius: BorderRadius.circular(12),
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