import 'package:flutter/material.dart';
import 'package:fps/components/icon_bottom_nav.dart';
import 'package:fps/screens/history/history.dart';
import 'package:fps/screens/home/home.dart';

import '../../constants/constant.dart';
import '../../constants/icon_bottom_nav_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<BotNav> menu = [
    const BotNav(
      image: 'images/home-outline.png',
      label: 'Home',
      selectedImage: 'images/home-solid.png',
    ),
    const BotNav(
      image: 'images/history-outline.png',
      label: 'Riwayat Sewa',
      selectedImage: 'images/history-solid.png',
    ),
    const BotNav(
      image: 'images/fav-outline.png',
      label: 'Favorit',
      selectedImage: 'images/fav-solid.png',
    ),
    const BotNav(
      image: 'images/profile-outline.png',
      label: 'Chat',
      selectedImage: 'images/profile-solid.png',
    ),
  ];
  int onPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: (onPage == 0)
                  ? const Home()
                  : History(
                      backOnPressed: () {
                        setState(() {
                          onPage = 0;
                        });
                      },
                    )),
          //botton navbar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: abuGaris),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                    menu.length,
                    (index) => IconBottomNav(
                        image: menu[index].image,
                        label: menu[index].label,
                        onPage: onPage,
                        index: index,
                        selectedImage: menu[index].selectedImage,
                        onClick: () {
                          setState(() {
                            onPage = index;
                          });
                        }))),
          )
        ],
      ),
    );
  }
}
