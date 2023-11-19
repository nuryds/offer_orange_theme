import 'package:flutter/material.dart';

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
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            //

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
          child: Text("Müşteri Takip",style:TextStyle(color: Colors.white,fontWeight: FontWeight.w300),
          ),
        ),
      ),
    );
  }
}
