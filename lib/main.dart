import 'package:flutter/material.dart';
import 'package:flutter_application/core/store.dart';
import 'package:flutter_application/pages/cart_page.dart';
import 'package:flutter_application/pages/home_page.dart';
import 'package:flutter_application/pages/login_page.dart';
import 'package:flutter_application/widgets/themes.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
//import 'package:flutter_application/widgets/drawer.dart';
//import 'package:flutter_application/main.dart';
//import 'package:flutter_application/pubspec.yml';

void main() {
  runApp(VxState(store:MyStore(),child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
