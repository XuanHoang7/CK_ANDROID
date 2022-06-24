import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String hinttext;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final bool ispass;

  const TextInput({
    Key? key,
    required this.hinttext,
    required this.textEditingController,
    required this.textInputType,
    this.ispass = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(1),
        borderSide: const BorderSide(width: 2, color: Colors.black));
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        fillColor: Colors.white,
        border: inputBorder,
        hintText: hinttext,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
      ),
      keyboardType: textInputType,
      obscureText: ispass,
    );
  }
}
