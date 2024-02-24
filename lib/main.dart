import 'package:flutter/material.dart';
import 'package:isitasku_project/presentation/screen/allBookPage.dart';
import 'package:isitasku_project/presentation/screen/bukupaketdetail.dart';
import 'package:isitasku_project/presentation/screen/homepage.dart';
import 'package:isitasku_project/presentation/screen/jadwalpage.dart';
import 'package:isitasku_project/presentation/screen/laporandetailpage.dart';
import 'package:isitasku_project/presentation/screen/laporanpage.dart';
import 'package:isitasku_project/presentation/screen/loginpage.dart';
import 'package:isitasku_project/presentation/widget/navbarwidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      home: const NavBarWidget(),
    );
  }
}
