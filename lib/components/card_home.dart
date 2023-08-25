import 'package:flutter/material.dart';
import 'package:fps/components/card_garis.dart';
import 'package:fps/constants/constant.dart';

class CardHome extends StatelessWidget {
  const CardHome({super.key});

  @override
  Widget build(BuildContext context) {
    return CardGaris(
        child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Dana vendor',
                style: kSemiBoldTextStyle,
              ),
              Text(
                'Sukabirus, Bandung',
                style: kRegularTextStyle.copyWith(fontSize: 8),
              ),
              Text(
                'Sewa tenda, kursi',
                style: kRegularTextStyle.copyWith(fontSize: 12),
              ),
              Text(
                'more',
                style: kRegularTextStyle.copyWith(fontSize: 8),
              ),
            ],
          ),
        ),
        Container(
          width: 110,
          height: double.infinity,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('images/tenda.png'))),
        )
      ],
    ));
  }
}
