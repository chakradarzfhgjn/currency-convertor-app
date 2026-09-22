import 'package:flutter/cupertino.dart';

class CurrencyConvertorCupertinoPage extends StatefulWidget {
  const CurrencyConvertorCupertinoPage({super.key});

  @override
  State<CurrencyConvertorCupertinoPage> createState() =>
      _CurrencyConvertorCupertinoPageState();
}

class _CurrencyConvertorCupertinoPageState
    extends State<CurrencyConvertorCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.darkBackgroundGray,
        middle: Text(
          'Currency Convertor',
          style: TextStyle(color: CupertinoColors.white),
        ),
      ),
      backgroundColor: CupertinoColors.black,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result.toStringAsFixed(2),
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.white,
                ),
              ),
              const SizedBox(height: 20),
              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(color: CupertinoColors.black),
                placeholder: 'Enter amount in USD',
                placeholderStyle: const TextStyle(
                  color: CupertinoColors.systemGrey,
                ),
                prefix: const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    CupertinoIcons.money_dollar,
                    color: CupertinoColors.systemGrey,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 10.0,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: CupertinoColors.systemGrey),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: CupertinoButton.filled(
                  borderRadius: BorderRadius.circular(14),
                  onPressed: () {
                    setState(() {
                      result =
                          (double.tryParse(textEditingController.text) ?? 0) *
                              81;
                    });
                  },
                  child: const Text('Convert'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}