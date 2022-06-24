import 'package:flutter/material.dart';
import 'package:photo_ltdd/screens/register/body/body.dart';

class RegisterScreens extends StatelessWidget {
  const RegisterScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: const Register(),
    );
  }
}
