import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  late PageController _pageController;
  int initialPage = 1;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.85,
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => const CardImage(
                image: 'assets/images/Rectangle 2.8.png',
              )),
    );
  }
}

class CardImage extends StatelessWidget {
  final String image;
  const CardImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Container(
            width: size.width * 1,
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage(image), fit: BoxFit.fill)),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        //Image.asset('assets/images/Ellipse.png')

        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: [
              Image.asset('assets/images/Ellipse.png'),
              const SizedBox(
                width: 8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Ridhwan Nordin',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '@ridzjcob',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
