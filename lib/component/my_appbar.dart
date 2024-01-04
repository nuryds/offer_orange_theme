import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../D6_ikinci_fiyat_guncelle.dart';
import '../constant/colors.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String baslik;
  final GlobalKey<ScaffoldState> scaffoldKey;

  MyAppbar({
    super.key,
    required this.baslik,
    required this.scaffoldKey,
  });

  bool isDrawerOpen = false;

  @override
  Size get preferredSize => Size.fromHeight(58.0);

  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        },
      ),
      actions: [
        IconButton(
          onPressed: () {
            // dinamik olarak değişecek eklendiği sayfa sıra düzenine göre
          },
          icon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset("assets/icons/ileri_icon.svg",
                colorFilter: const ColorFilter.mode(profileCardColor, BlendMode.srcIn), width: 26, height: 23),
          ),
        ),
      ],
      backgroundColor: primaryColor,
      title: Center(
        child: Text(baslik,
            style: GoogleFonts.manrope(
              fontSize: 23,
              color: onPrimaryTextColor,
              fontWeight: FontWeight.w500,
            )),
      ),
    );
  }
}
