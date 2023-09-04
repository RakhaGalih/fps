import 'package:flutter/material.dart';
import 'package:fps/components/app_bar.dart';
import 'package:fps/constants/constant.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MyCustomAppBar(
              title: 'Notifikasi',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [unguGelap.withOpacity(0.66), unguGelap]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'E-Vendor',
                        style: kSemiBoldTextStyle.copyWith(
                            color: Colors.white, fontSize: 15),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                      )
                    ],
                  ),
                  Text(
                    'Selamat datang di E-Vendor, sukseskan acaramu bersama kami!',
                    style: kMediumTextStyle.copyWith(
                        color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
