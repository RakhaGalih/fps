import 'package:flutter/material.dart';

import '../constants/constant.dart';

class IconBottomNav extends StatelessWidget {
  final int index, onPage;
  final String image, selectedImage, label;
  final Function() onClick;
  const IconBottomNav(
      {super.key,
      required this.image,
      required this.label,
      required this.onPage,
      required this.index,
      required this.selectedImage,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Column(
        children: [
          (onPage == index) ? Image.asset(selectedImage) : Image.asset(image),
          const SizedBox(
            height: 3,
          ),
          Text(
            label,
            style: kMediumTextStyle.copyWith(
                fontSize: 12, color: (onPage == index) ? unguGelap : abuText),
          )
        ],
      ),
    );
  }
}
