import 'package:flutter/material.dart';
import 'converted_screen.dart';

class CurrencyConverterHome extends StatefulWidget {
  @override
  _CurrencyConverterHomeState createState() => _CurrencyConverterHomeState();
}

class _CurrencyConverterHomeState extends State<CurrencyConverterHome> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Converter'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Amount in USD',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double usd = double.tryParse(_controller.text) ?? 0;
                double bdt = usd * 120;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConvertedAmountScreen(amount: bdt),
                  ),
                );
              },
              child: Text('Convert'),
            ),
          ],
        ),
      ),
    );
  }
}
