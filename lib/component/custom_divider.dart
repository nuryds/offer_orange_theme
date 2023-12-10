import 'package:flutter/material.dart';
import 'package:offer_orange_theme/constant/colors.dart';

class MyDivider extends StatelessWidget {
  //final double? width ;
  final double? height;    // opsiyonel
  final double? thickness;
  final double? indent;
  final double? endIndent ;
  const MyDivider({
    super.key,
    // this.width,
    this.height,
    this.thickness,
   this.indent,
    this.endIndent,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 10, // Boşluk yüksekliği
      color:secondaryColor, // Çizgi rengi
      thickness: 1, // Çizgi kalınlığı
      indent:indent , // Sol taraf boşluğu
      endIndent:endIndent , // Sağ taraf boşluğu
    );
  }
}


/*
                    Row(
                    children: [
                      Expanded(
                        child:
                      Divider(
                        indent: 10,
                        endIndent: 20,
                        thickness: 0.6,
                        color: Colors.blueGrey,
                      ),
                      ),
                      Text("join us"),
                      Expanded(child: Divider(
                        indent: 20,
                        endIndent: 10,
                        thickness: 0.6,
                        color: Colors.blueGrey,
                      ),
                      ),
                    ],
                  ),
 */




