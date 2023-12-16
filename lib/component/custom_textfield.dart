import 'package:flutter/material.dart';
import 'package:offer_orange_theme/constant/colors.dart';

class CustomTextField extends StatelessWidget {
  final Function(String)? onChange;
  final Function()? onEditingComplete;
  final double? width;
  final double? height;
  final String? label;
  final bool obscureText;
  final bool enable;
  final validator;
  final controller;
  final Color validationColor;
  final Color textColor;
  final FontWeight fontWeight;
  final TextInputType keyboardType;
  final String? initialValue;
  final double? letterSpacing;
  final double? textSize;
  final double? labelTextSize;
  final int? minLines;
  final int? maxLines;
  final TextAlign? textAlign;

  const CustomTextField(
      {Key? key,
        this.onChange,
        this.width,
        this.label,
        this.onEditingComplete,
        this.obscureText = false,
        this.validator,
        this.controller,
        this.validationColor = Colors.deepOrangeAccent,
        this.textColor = Colors.black,
        this.enable = true,
        this.height = 60,
        this.fontWeight = FontWeight.normal,
        this.keyboardType = TextInputType.text,
        this.initialValue,
        this.letterSpacing = 0.5,
        this.textSize = 16,
        this.labelTextSize = 12,
        this.minLines = 1,
        this.maxLines = 3,
        this.textAlign = TextAlign.start,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Material(
        color: Colors.white38,
        //  elevation: 1.0,
        shadowColor: Colors.grey.shade200,
        child: TextFormField(
          initialValue: initialValue,
          keyboardType: keyboardType,
          style: TextStyle(color:Colors.black, fontWeight: fontWeight, letterSpacing: letterSpacing, fontSize: textSize),
          textAlign: textAlign!,
          minLines: minLines,
          maxLines: maxLines,
          enabled: enable,
          controller: controller,
          obscureText: obscureText,
          validator: validator,
          cursorColor: validationColor,
          onChanged: onChange,
          onEditingComplete: onEditingComplete,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            fillColor: onPrimaryTextColor,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: backgroundColor,
              ),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color:backgroundColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color:backgroundColor ,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
            labelStyle: TextStyle(
              fontSize: labelTextSize,
              color:primaryColor ,
              fontWeight: FontWeight.normal,
            ),
            labelText: label,
            alignLabelWithHint: true,
            floatingLabelBehavior: FloatingLabelBehavior.auto,
          ),
        ),
      ),
    );
  }
}
