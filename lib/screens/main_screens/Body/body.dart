import 'package:flutter/material.dart';
import 'package:photo_ltdd/screens/main_screens/Body/card.dart';

import 'detail_image.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Discover",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 46,
                  fontStyle: FontStyle.normal),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              " WHAT'S NEW TODAY",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const CardPage(),
            const SizedBox(
              height: 28,
            ),
            const Text(
              'BROWSE ALL',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 13),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Column(
                  children: const [
                    DetailImage(
                      height: 220,
                      width: 195,
                      image: 'assets/images/anh1.png',
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    DetailImage(
                      height: 360,
                      width: 195,
                      image: 'assets/images/anh2.png',
                    ),
                  ],
                ),
                const Expanded(
                  child: SizedBox(
                    width: 9,
                  ),
                ),
                Column(
                  children: const [
                    DetailImage(
                      height: 360,
                      width: 195,
                      image: 'assets/images/anh3.png',
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    DetailImage(
                      height: 220,
                      width: 195,
                      image: 'assets/images/anh1.png',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
