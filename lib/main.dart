import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(Container(color: Colors.red[200]));
// }
// entire page turned red

// void main() {
//   runApp(Text("hello world"));
// }
// throws an error, because for using flutter widgets like text, we need to implement some foundations for our applications, like MaterialApp or cuepertino app

void main() {
  runApp(const MyApp());
}

/*
  Types of Widgets:
  1. StatelessWidgets-immutable state
  2. StatefulWidgets-mutable state
*/

// Two types of design systems:
// 1. Material Design
// 2. Cupertino Design

class MyApp extends StatelessWidget {
  const MyApp(
      {super.key}); //key is a class that helps flutter identify and differentiate between widgets.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}
