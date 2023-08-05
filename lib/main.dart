import 'dart:async';
import 'dart:convert';
import 'package:bhagvat_geeta_app/views/screen/FirstPage.dart';
import 'package:bhagvat_geeta_app/views/screen/SplashPage.dart';
import 'package:bhagvat_geeta_app/views/screen/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'views/screen/detail_page.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: true,
    ),
    routes: {
      '/': (context) => const SplashPage(),
      'firstPage': (context) => const FirstPage(),
      'homePage': (context) => const MyApp(),
      'detail_page': (context) => const DetailPage(),
    },
  ));
}



