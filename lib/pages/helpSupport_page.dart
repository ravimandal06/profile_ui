import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/ui/home_page.dart';

import '../services/theme_services.dart';

class HelpSupportPage extends StatefulWidget {
  const HelpSupportPage({Key? key}) : super(key: key);

  @override
  State<HelpSupportPage> createState() => _HelpSupportPageState();
}

class _HelpSupportPageState extends State<HelpSupportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
    );
  }

  _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: context.theme.backgroundColor,
      // actions: [
      leading: BackButton(),

      // ],
      actions: [
        GestureDetector(
          onTap: () {
            ThemeServices().switchTheme();
          },
          child: Icon(
            Get.isDarkMode ? CupertinoIcons.sun_min : CupertinoIcons.moon_stars,
            size: 20,
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
