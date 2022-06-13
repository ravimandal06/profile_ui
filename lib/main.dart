import 'package:flutter/material.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:project/pages/helpSupport_page.dart';
import 'package:project/pages/invite.dart';
import 'package:project/pages/privacy_page.dart';
import 'package:project/pages/purchaseHistory_page.dart';
import 'package:project/pages/settings.dart';
import 'package:project/services/theme_services.dart';
import 'package:project/ui/home_page.dart';
import 'package:project/ui/theme.dart';
import 'package:project/utils/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeServices().theme,
      initialRoute: MyRoutes.homePage,
      routes: {
        // "/": (context) => HomePage(),
        MyRoutes.homePage: (context) => HomePage(),
        MyRoutes.privacyPage: (context) => PrivacyPage(),
        MyRoutes.purchaseHistoryRoute: (context) => PurchaseHistoryPage(),
        MyRoutes.helpSupportRoute: (context) => HelpSupportPage(),
        MyRoutes.settingsRoute: (context) => SettingsPage(),
        MyRoutes.inviteRoute: (context) => InvitePage()
      },
    );
  }
}
