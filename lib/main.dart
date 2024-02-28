import 'package:flutter/material.dart';
import 'package:isitasku_project/bloc/add_laporan/add_laporan_bloc.dart';
import 'package:isitasku_project/bloc/book/book_bloc.dart';
import 'package:isitasku_project/bloc/jadwal/jadwal_bloc.dart';
import 'package:isitasku_project/bloc/laporan/laporan_bloc.dart';
import 'package:isitasku_project/bloc/login/login_bloc.dart';
import 'package:isitasku_project/data/datasources/auth_datasource.dart';
import 'package:isitasku_project/data/datasources/book_datasource.dart';
import 'package:isitasku_project/data/datasources/jadwal_datasource.dart';
import 'package:isitasku_project/data/datasources/laporan_datasource.dart';
import 'package:isitasku_project/presentation/screen/allBookPage.dart';
import 'package:isitasku_project/presentation/screen/bukupaketdetail.dart';
import 'package:isitasku_project/presentation/screen/homepage.dart';
import 'package:isitasku_project/presentation/screen/jadwalpage.dart';
import 'package:isitasku_project/presentation/screen/laporandetailpage.dart';
import 'package:isitasku_project/presentation/screen/laporanpage.dart';
import 'package:isitasku_project/presentation/screen/loginpage.dart';
import 'package:isitasku_project/presentation/widget/navbarwidget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(AuthDatasource()),
        ),
        BlocProvider(
          create: (context) => BookBloc(BookDatasource()),
        ),
        BlocProvider(
          create: (context) => JadwalBloc(JadwalDatasource()),
        ),
        BlocProvider(
          create: (context) => LaporanBloc(LaporanDatasource()),
        ),
        BlocProvider(
          create: (context) => AddLaporanBloc(LaporanDatasource()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        // theme: ThemeData(
        //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //   useMaterial3: true,
        // ),
        darkTheme: ThemeData(brightness: Brightness.dark),
        themeMode: ThemeMode.dark,
        home: const LoginPage(),
      ),
    );
  }
}
