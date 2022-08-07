import 'package:flutter/material.dart';
import 'package:payment_method/shared/components/constant.dart';

class RefCodeScreen extends StatelessWidget {
  const RefCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('You should go to any market to pay'),
            const SizedBox(height: 30),
            const Text('This is Refrance Code'),
            const SizedBox(height: 30),
            Card(
              shape: Border.all(color: Colors.red),
              child: Text(refCode),
            )
          ],
        ),
      ),
    );
  }
}
