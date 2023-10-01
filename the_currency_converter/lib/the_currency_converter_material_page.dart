import 'package:flutter/material.dart';

class CurrencyConverterMaterialPageStateful extends StatefulWidget {
  const CurrencyConverterMaterialPageStateful({super.key});

  @override
  State<CurrencyConverterMaterialPageStateful> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPageStateful> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;
  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 81;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('rebuilt');
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignCenter,
      ),
      borderRadius: BorderRadius.circular(20),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text(
          "Currency Converter",
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                debugPrint('Settings button clicked');
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.attach_money_rounded,
                ),
                prefixIconColor: Colors.black,
                hintText: 'Please enter the amount in USD',
                hintStyle: const TextStyle(
                  color: Colors.black,
                ),
                filled: true,
                fillColor: Colors.white,
                focusedBorder: border,
                enabledBorder: border,
              ),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: convert,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                textStyle: const TextStyle(
                  fontSize: 18,
                ),
                minimumSize: const Size(double.infinity, 40),
              ),
              child: const Text(
                'Convert',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
