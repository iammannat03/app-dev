import 'package:flutter/material.dart';

import 'justice_app_materials_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:JusticeAppMaterialPage(),
    );
  }
}
