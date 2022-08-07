import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_method/modules/payment/cubit/cubit.dart';
import 'package:payment_method/modules/payment/cubit/states.dart';
import 'package:payment_method/modules/payment/toggle.dart';

import 'package:payment_method/shared/components/compontents.dart';
import 'package:payment_method/shared/styles/colors.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: deColor,
        centerTitle: true,
        title: const Text("Payment Integration"),
      ),
      body: BlocProvider(
        create: (context) => PaymentCubit(),
        child: BlocConsumer<PaymentCubit, PaymentStates>(
            listener: (context, state) {
          if (state is PaymentRefCodeSuccessState) {
            NavigateTo(context, const ToggleScreen());
          }
        }, builder: (context, state) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(15),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  defaultFormFiled(
                      controller: firstNameController,
                      textInputType: TextInputType.name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your first name';
                        }
                        return null;
                      },
                      lable: "First name",
                      prefix: Icons.person),
                  const SizedBox(height: 30),
                  defaultFormFiled(
                      controller: lastNameController,
                      textInputType: TextInputType.name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your last name';
                        }
                        return null;
                      },
                      lable: "last name",
                      prefix: Icons.person),
                  const SizedBox(height: 30),
                  defaultFormFiled(
                      controller: emailController,
                      textInputType: TextInputType.name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your email';
                        }
                        return null;
                      },
                      lable: "Email",
                      prefix: Icons.email),
                  const SizedBox(height: 30),
                  defaultFormFiled(
                      controller: phoneController,
                      textInputType: TextInputType.name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your Phone';
                        }
                        return null;
                      },
                      lable: "Phone",
                      prefix: Icons.phone),
                  const SizedBox(height: 30),
                  defaultFormFiled(
                      controller: priceController,
                      textInputType: TextInputType.name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your Price';
                        }
                        return null;
                      },
                      lable: "Price",
                      prefix: Icons.price_change),
                  const SizedBox(height: 30),
                  defaultButton(
                      function: () async {
                        if (formKey.currentState!.validate()) {
                          await PaymentCubit.get(context).getFirstToken(
                              priceController.text,
                              firstNameController.text,
                              lastNameController.text,
                              emailController.text,
                              phoneController.text);
                        }
                      },
                      text: 'Go to pay',
                      raduis: 12,
                      width: 200),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
