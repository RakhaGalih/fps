import 'package:flutter/material.dart';

import '../constants/constant.dart';

class MyCustomAppBar extends StatelessWidget {
  final Function() onPressed;
  final String title;
  const MyCustomAppBar(
      {super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          GestureDetector(
            onTap: onPressed,
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: unguGelap.withOpacity(0.2)),
              child: Image.asset('images/back.png'),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            title,
            style: kMediumTextStyle.copyWith(fontSize: 20),
          )
        ],
      ),
    );
  }
}
