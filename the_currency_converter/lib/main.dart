import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_currency_converter/the_currency_converter_cupertino_page.dart';
import 'package:the_currency_converter/the_currency_converter_material_page.dart';

void main() {
  runApp(const MyCupertinoApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPageStateful(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCupertinoPage(),
    );
  }
}
