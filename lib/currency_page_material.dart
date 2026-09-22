import 'package:flutter/material.dart';

class CurrencyConvertorPage extends StatefulWidget {
  const CurrencyConvertorPage({super.key});

  @override
  State<CurrencyConvertorPage> createState() => _CurrencyConvertorPageState();
}

class _CurrencyConvertorPageState extends State<CurrencyConvertorPage> {

  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(183, 66, 63, 63),
        title: const Text(
          'Currency Convertor',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Center(
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
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.grey),
                decoration: const InputDecoration(
                  hintText: 'Enter amount in USD',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.grey,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = (double.tryParse(textEditingController.text) ?? 0) * 81;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:const Color.fromARGB(183, 66, 63, 63) ,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  elevation: 14,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}