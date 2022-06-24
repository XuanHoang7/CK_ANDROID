import 'package:flutter/material.dart';
import 'package:photo_ltdd/screens/login/login_screens.dart';

import 'package:photo_ltdd/screens/register/register_screens.dart';
import 'package:photo_ltdd/screens/welcome/body/button_welcome.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.expand, children: [
      SvgPicture.asset('assets/icons/backgroud.svg'),
      Positioned(
        bottom: 0,
        child: Container(
          height: size.height * 0.1 + 50,
          width: size.width * 1,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWelcome(
                  colorprimary: Colors.white,
                  colortxt: Colors.black,
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScreens())),
                  text: 'REGISTER',
                ),
                const SizedBox(
                  width: 10,
                ),
                ButtonWelcome(
                  colorprimary: Colors.black,
                  colortxt: Colors.white,
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreens())),
                  text: 'LOG IN',
                ),
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
