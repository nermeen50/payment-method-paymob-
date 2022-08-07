import 'package:flutter/material.dart';

Widget defaultButton(
    {double width = double.infinity,
    Color background = Colors.blue,
    bool isUpperCase = true,
    double raduis = 0.0,
    required Function() function,
    required String text}) {
  return Container(
    width: width,
    height: 40.0,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(raduis), color: background),
    child: MaterialButton(
      onPressed: function,
      child: Text(
        isUpperCase ? text.toUpperCase() : text,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget defaultFormFiled(
    {required TextEditingController controller,
    required TextInputType textInputType,
    ValueChanged<String>? onSubmit,
    ValueChanged<String>? onChange,
    GestureTapCallback? onTap,
    required FormFieldValidator<String>? validator,
    required String lable,
    required IconData prefix,
    Icon? suffix,
    VoidCallback? suffixPressed,
    bool isClickable = true,
    bool isPassword = false,
    int? lines}) {
  return TextFormField(
    controller: controller,
    keyboardType: textInputType,
    enabled: isClickable,
    obscureText: isPassword,
    onFieldSubmitted: onSubmit,
    onChanged: onChange,
    onTap: onTap,
    maxLines: lines,
    validator: validator,
    decoration: InputDecoration(
        labelText: lable,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(onPressed: suffixPressed, icon: suffix)
            : null,
        border: const OutlineInputBorder()),
  );
}

void NavigateTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

void NavigateAndPushReplacement(context, widget) =>
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => widget),
        (Route<dynamic> route) => false);
