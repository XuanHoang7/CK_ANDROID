import 'package:flutter/material.dart';

class ButtonWelcome extends StatelessWidget {
  final String text;
  final Color colorprimary;
  final VoidCallback press;
  final Color colortxt;
  const ButtonWelcome({
    Key? key,
    required this.text,
    required this.colorprimary,
    required this.press,
    required this.colortxt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        width: 190,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: colorprimary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                  side: const BorderSide(color: Colors.black, width: 2))),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
                color: colortxt, fontWeight: FontWeight.w500, fontSize: 20),
          ),
        ));
  }
}
