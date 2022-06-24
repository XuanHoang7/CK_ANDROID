import 'package:flutter/material.dart';
import 'package:photo_ltdd/screens/login/body/text_input.dart';
import 'package:photo_ltdd/screens/main_screens/main_screens.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Login',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 46,
                  fontStyle: FontStyle.normal),
            ),
            const SizedBox(
              height: 30,
            ),
            TextInput(
              hinttext: 'moi ban nhap email',
              textEditingController: _email,
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 30,
            ),
            TextInput(
              hinttext: 'moi ban nhap password',
              textEditingController: _password,
              textInputType: TextInputType.visiblePassword,
            ),
            const SizedBox(
              height: 30,
            ),
            const Button(),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390,
      height: 60,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              primary: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9))),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MainScreens())),
          child: const Text(
            'LOG IN',
            style: TextStyle(fontSize: 22),
          )),
    );
  }
}
