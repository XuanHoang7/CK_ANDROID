import 'package:flutter/material.dart';

class CommitButton extends StatelessWidget {
  const CommitButton({
    Key? key,
    required this.text,
    required this.height,
    required this.withd,
    required this.color,
    required this.colortext,
  }) : super(key: key);
  final String text;
  final double height;
  final double withd;
  final Color color;
  final Color colortext;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: withd,
      height: height,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              primary: color,
              shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(9))),
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
              fontSize: 13,
              color: colortext,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}
