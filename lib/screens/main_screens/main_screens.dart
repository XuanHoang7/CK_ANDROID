import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_ltdd/screens/main_screens/Search/body.dart';

import 'Body/body.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({Key? key}) : super(key: key);

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _page = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
        children: const [
          Body(),
          BodySearch(),
          Text("abaa"),
          Text("aabaa"),
          Text("aaadda")
        ],
      ),
      bottomNavigationBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _page == 0 ? Colors.blue : Colors.black12,
            ),
            label: '',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: _page == 1 ? Colors.blue : Colors.black12,
              ),
              label: '',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: _page == 2 ? Colors.blue : Colors.black12,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: _page == 3 ? Colors.blue : Colors.black12,
              ),
              label: '',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: _page == 4 ? Colors.blue : Colors.black12,
              ),
              label: '',
              backgroundColor: Colors.black),
        ],
        onTap: navigationTapped,
      ),
    );
  }
}
