import 'package:TechTowerApp/pages/company_page.dart';
import 'package:TechTowerApp/pages/cont_page.dart';
import 'package:TechTowerApp/pages/login_page.dart';
import 'package:TechTowerApp/services/auth_provider.dart';
import 'package:TechTowerApp/themes/theme_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'pages/cart_page.dart';
import 'pages/intro_page.dart';
import 'pages/shop_page.dart';
import 'pages/login_page.dart';
import 'package:provider/provider.dart';
import "models/shop.dart";



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(
      providers: [
    ChangeNotifierProvider(create: (context) => Shop()),
    ChangeNotifierProvider(create: (context) => ThemeProvider()),
    ChangeNotifierProvider(create: (context) => UserProvider()),
  ], 
  child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
        theme: Provider.of<ThemeProvider>(context).themeData,
        routes: {
          '/intro_page': (context) => const IntroPage(),
          '/shop_page': (context) => const ShopPage(),
          '/cart_page': (context) => const CartPage(),
          '/login_page': (context) => LoginPage(),
          '/cont_page': (context) => ContPage(),
          '/company_page': (context) => CompanyPage()
        });
  }
}
