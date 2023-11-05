import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:offer_orange_theme/component/custom_divider.dart';
import 'package:offer_orange_theme/component/custom_textfield.dart';
import 'package:offer_orange_theme/constant/colors.dart';
import 'package:offer_orange_theme/fiyat_guncelle.dart';
import 'package:offer_orange_theme/teklif_hesapla.dart';

class IkinciFiyatGuncelle extends StatefulWidget {
  const IkinciFiyatGuncelle({super.key});

  @override
  State<IkinciFiyatGuncelle> createState() => _IkinciFiyatGuncelleState();
}

void onPressedrefresh() {
  //resfresh butonuna basınca yapılacaklar
}

class _IkinciFiyatGuncelleState extends State<IkinciFiyatGuncelle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.to(const FiyatGuncelle());
            },
            icon: const Icon(Icons.arrow_back, color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Get.to(const TeklifHesapla());
              },
              icon: const Icon(Icons.exit_to_app, color: Colors.white),
            ),
          ],
          backgroundColor: appbarColor,
          title: const Text(
            "Fiyat Güncelle",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: SizedBox(width: 1)),
                        Text("P 1,86 indoor", style: TextStyle(fontSize: 30)),
                        Flexible(child: SizedBox(width: 80)),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: CustomTextField(
                                width: 200,
                                label: "Fiyat",
                              ),
                            ),
                            IconButton(
                              onPressed: onPressedrefresh,
                              icon: Icon(
                                Icons.refresh,
                                size: 35,
                                color: buttonActiveColor,
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: SizedBox(width: 1)),

                      ],
                    );
                  }, separatorBuilder: (BuildContext context, int index) {
                    return MyDivider() ;
              },),
            )
          ],
        )

        /*  Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            MyDivider(),
            SizedBox(height: 5),
            Row(
              children: [
                Text("P 1,86 indoor", style: TextStyle(fontSize: 30)),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: CustomTextField(
                    width: 200,
                    label: "Fiyat",
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: onPressedrefresh,
                  icon: Icon(
                    Icons.refresh,
                    size: 35,
                    color: buttonActiveColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            MyDivider(),
            SizedBox(height: 5),
            Row(
              children: [
                Text("P 1,86 indoor", style: TextStyle(fontSize: 30)),
                SizedBox(
                  width: 300,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: CustomTextField(width: 200, label: "Fiyat"),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: onPressedrefresh,
                  icon: Icon(
                    Icons.refresh,
                    size: 35,
                    color: buttonActiveColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            MyDivider(

            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "P 1,86 indoor",
                  style: TextStyle(fontSize: 30),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: CustomTextField(width: 200, label: "Fiyat"),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: onPressedrefresh,
                  icon: Icon(
                    Icons.refresh,
                    size: 35,
                    color: buttonActiveColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            MyDivider(

            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "P 1,86 indoor",
                  style: TextStyle(fontSize: 30),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: CustomTextField(width: 200, label: "Fiyat"),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: onPressedrefresh,
                  icon: Icon(
                    Icons.refresh,
                    size: 35,
                    color: buttonActiveColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            MyDivider(

            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "P 1,86 indoor",
                  style: TextStyle(fontSize: 30),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: CustomTextField(width: 200, label: "Fiyat"),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: onPressedrefresh,
                  icon: Icon(
                    Icons.refresh,
                    size: 35,
                    color: buttonActiveColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            MyDivider(

            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "P 1,86 indoor",
                  style: TextStyle(fontSize: 30),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: CustomTextField(width: 200, label: "Fiyat"),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: onPressedrefresh,
                  icon: Icon(
                    Icons.refresh,
                    size: 35,
                    color: buttonActiveColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            MyDivider(

            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "P 1,86 indoor",
                  style: TextStyle(fontSize: 30),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: CustomTextField(label: "Fiyat"),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: onPressedrefresh,
                  icon: Icon(
                    Icons.refresh,
                    size: 35,
                    color: buttonActiveColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            MyDivider(

            ),
          ],
        ),
      ),*/
        );
  }
}
