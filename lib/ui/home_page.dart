import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/pages_list/privacy.dart';

import '../model/user.dart';
import '../pages_list/helpSupport.dart';
import '../pages_list/invite.dart';
import '../pages_list/logout.dart';
import '../pages_list/purchaseHistory.dart';
import '../pages_list/settings.dart';
import '../services/theme_services.dart';
import '../utils/user_preferences.dart';
import '../widget/button_widget.dart';
import '../widget/profile_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final isDarkMode = Theme.of(context).brightness == Brightness.dark;

  @override
  Widget build(BuildContext context) {
    // final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: _appBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height: 10),
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(height: 12),
          buildName(user),
          const SizedBox(height: 10),
          Center(child: buildUpgradeButton()),
          const SizedBox(height: 20),
          Center(child: buildListPrivacy()),
          const SizedBox(height: 10),
          Center(child: buildListPurchase()),
          const SizedBox(height: 10),
          Center(child: buildListHelp()),
          const SizedBox(height: 10),
          Center(child: buildListSettings()),
          const SizedBox(height: 10),
          Center(child: buildListInvite()),
          const SizedBox(height: 10),
          Center(child: buildListLogout()),
          const SizedBox(height: 48),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 3),
          Text(user.email, style: TextStyle(fontSize: 15)),
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Upgrade To PRO',
        onClicked: () {
          print('tapped-upgrade-button');
        },
      );

  Widget buildListPrivacy() => PrivacyWidget(
      text: 'Privacy',
      onClicked: () {
        print('tapped-privacy');
      },
      arrowshown: true);

  Widget buildListPurchase() => PurchaseWidget(
      text: 'Purchase History',
      onClicked: () {
        print('tapped-privacy');
      },
      arrowshown: true);

  Widget buildListHelp() => HelpWidget(
      text: 'Help & Support',
      onClicked: () {
        print('tapped-privacy');
      },
      arrowshown: true);

  Widget buildListSettings() => SettingsWidget(
      text: 'Settings',
      onClicked: () {
        print('tapped-privacy');
      },
      arrowshown: true);

  Widget buildListInvite() => InviteWidget(
      text: 'Invite a Friend',
      onClicked: () {
        print('tapped-privacy');
      },
      arrowshown: true);

  Widget buildListLogout() => LogoutWidget(
      text: 'Logout',
      onClicked: () {
        print('tapped-privacy');
      },
      arrowshown: true);

  _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      // actions: [
      leading: BackButton(),

      // ],
      actions: [
        GestureDetector(
          onTap: () {
            ThemeServices().switchTheme();

            // final theme = isDarkMode ? MyThemes.lightTheme : MyThemes.darkTheme;
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
