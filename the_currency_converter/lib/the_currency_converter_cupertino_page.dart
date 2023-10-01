import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
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
    // final border = OutlineInputBorder(
    //   borderSide: const BorderSide(
    //     color: Colors.black,
    //     width: 2.0,
    //     style: BorderStyle.solid,
    //     strokeAlign: BorderSide.strokeAlignCenter,
    //   ),
    //   borderRadius: BorderRadius.circular(20),
    // );

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.activeBlue,
      navigationBar: const CupertinoNavigationBar(
        middle: Text(
          "Currency Converter",
        ),
        backgroundColor: CupertinoColors.activeBlue,
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: CupertinoColors.white,
              ),
            ),
            CupertinoTextField(
              controller: textEditingController,
              style: const TextStyle(
                color: CupertinoColors.black,
              ),
              decoration: BoxDecoration(
                color: CupertinoColors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(5),
              ),
              placeholder: 'Please enter the amount in USD',
              prefix: const Icon(CupertinoIcons.money_dollar),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CupertinoButton(
              onPressed: convert,
              color: CupertinoColors.black,
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
