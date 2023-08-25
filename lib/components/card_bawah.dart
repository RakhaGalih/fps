import 'package:flutter/material.dart';

import 'card_garis.dart';

class CardBawah extends StatelessWidget {
  final String image, judul, harga;
  const CardBawah({
    super.key,
    required this.judul,
    required this.image,
    required this.harga,
  });

  @override
  Widget build(BuildContext context) {
    return CardGaris(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(image),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      judul,
                    ),
                    Text(harga),
                  ],
                ),
              ),
              Image.asset('images/fav-outline.png')
            ],
          ),
        )
      ],
    ));
  }
}
