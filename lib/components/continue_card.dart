import 'package:flutter/material.dart';
import 'package:fps/constants/constant.dart';

class ContinueCard extends StatelessWidget {
  final Widget child;
  const ContinueCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: abuGaris),
          borderRadius: BorderRadius.circular(12)),
      child: child,
    );
  }
}
