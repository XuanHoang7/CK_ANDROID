import 'package:flutter/material.dart';
import 'package:photo_ltdd/screens/main_screens/Body/detail_image.dart';
import 'package:photo_ltdd/widget/commitbutton.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            const AvatarProfile(),
            const SizedBox(
              height: 32,
            ),
            const NameandAddress(),
            const SizedBox(
              height: 32,
            ),
            const CommitButton(
              text: 'FOLLOW',
              height: 52,
              withd: double.infinity,
              color: Colors.black,
              colortext: Colors.white,
            ),
            const SizedBox(
              height: 16,
            ),
            const CommitButton(
                text: 'MESSAGE',
                height: 52,
                withd: double.infinity,
                color: Colors.white,
                colortext: Colors.black),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Column(
                  children: const [
                    DetailImage(
                      height: 220,
                      width: 195,
                      image: 'assets/images/Rectangle 2.png',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DetailImage(
                      height: 310,
                      width: 195,
                      image: 'assets/images/Rectangle 2.2.png',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DetailImage(
                      height: 310,
                      width: 195,
                      image: 'assets/images/Rectangle 2.4.png',
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: const [
                    DetailImage(
                      height: 310,
                      width: 195,
                      image: 'assets/images/Rectangle 2.1.png',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DetailImage(
                      height: 310,
                      width: 195,
                      image: 'assets/images/Rectangle 2.3.png',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DetailImage(
                      height: 220,
                      width: 195,
                      image: 'assets/images/Rectangle 2.5.png',
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            const CommitButton(
              text: 'SEE MORE',
              height: 52,
              withd: double.infinity,
              color: Colors.white,
              colortext: Colors.black,
            ),
            const SizedBox(
              height: 22,
            ),
          ],
        ),
      ),
    );
  }
}

class AvatarProfile extends StatelessWidget {
  const AvatarProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 128,
      width: 128,
      child: Stack(
        fit: StackFit.expand,
        children: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/Avatar.png'),
          ),
        ],
      ),
    );
  }
}

class NameandAddress extends StatelessWidget {
  const NameandAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Jane',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'San francisco, ca',
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w900),
        )
      ],
    );
  }
}
