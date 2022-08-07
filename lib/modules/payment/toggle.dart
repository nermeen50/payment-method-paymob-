import 'package:flutter/material.dart';
import 'package:payment_method/modules/payment/ref_code.dart';
import 'package:payment_method/modules/payment/visa_card.dart';
import 'package:payment_method/shared/components/compontents.dart';
import 'package:payment_method/shared/components/constant.dart';

class ToggleScreen extends StatelessWidget {
  const ToggleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: InkWell(
              onTap: () => NavigateTo(context, const VisaCardScreen()),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/contactless-hero-card-800x450.png'),
                    const Text("Visa Card")
                  ],
                ),
              ),
            )),
            const SizedBox(height: 20),
            Expanded(
                child: InkWell(
              onTap: () => NavigateTo(context, const RefCodeScreen()),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images.jpg'),
                    const Text("Ref Code")
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
