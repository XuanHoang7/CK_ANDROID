import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  const DetailImage({
    required this.height,
    required this.width,
    required this.image,
    Key? key,
  }) : super(key: key);
  final double height;
  final double width;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Image.asset(
        image,
        fit: BoxFit.fill,
      ),
    );
  }
}
