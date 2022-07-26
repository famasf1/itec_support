import 'package:flutter/material.dart';
import 'package:itec_support/views/MainView.dart';
//flutter pub add http

void main() {
  runApp(MaterialApp(
    title: 'ITEC Support',
    theme: ThemeData(primarySwatch: Colors.cyan, backgroundColor: Colors.white),
    initialRoute: '/',
    routes: {
      '/': (context) => const MainPage(),
      '/search': (context) => const SearchPage(),
    },
  ));
}
