import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterggs/currency_page_cupertino.dart'; 
import 'package:flutterggs/currency_page_material.dart'; 

void main() {
  runApp(const MyCupertinoApp()); 
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CurrencyConvertorPage(),
    );
  }
}


class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CurrencyConvertorCupertinoPage()
    );
  }
}