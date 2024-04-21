import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/utilis/language/en_US.dart';
import 'package:unimart/view/auth/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sp = await SharedPreferences.getInstance();
  bool dark = sp.getBool("mode") ?? false;
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => ColorNotifires(),
    ),
  ], child: MyApp(dark)));
}

class MyApp extends StatefulWidget {
  bool darkmode;
  MyApp(this.darkmode);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    notifires = Provider.of<ColorNotifires>(context, listen: false);
    return GetMaterialApp(
      title: 'UniMart',
      translations: Language(),
      fallbackLocale: Locale("en", "US"),
      locale: Locale("en", "US"),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // appBarTheme: AppBarTheme(color: CustomTheme.mostviewcolor),
        colorScheme: ColorScheme.fromSeed(seedColor: teal),
        // primarySwatch: notifires.getwhiteblackcolor,
        useMaterial3: true,
      ),
      home: SplashPage(),
    );
  }
}
