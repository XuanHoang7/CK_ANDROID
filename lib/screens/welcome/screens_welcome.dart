import 'package:flutter/material.dart';

import 'package:photo_ltdd/screens/welcome/body/body.dart';

class WelcomeScreens extends StatelessWidget {
  const WelcomeScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Body(size: size),
    );
  }
}
