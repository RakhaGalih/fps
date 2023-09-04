import 'package:flutter/material.dart';
import 'package:fps/components/app_bar.dart';
import 'package:fps/constants/constant.dart';

class History extends StatefulWidget {
  final Function() backOnPressed;
  const History({super.key, required this.backOnPressed});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  bool aktif = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          MyCustomAppBar(
              onPressed: widget.backOnPressed, title: 'Riwayat Sewa'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                MyTabBar(
                  isActive: aktif,
                  title: 'Aktif',
                  onPressed: () {
                    setState(() {
                      aktif = true;
                    });
                  },
                ),
                MyTabBar(
                  isActive: !aktif,
                  title: 'Selesai',
                  onPressed: () {
                    setState(() {
                      aktif = false;
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset((aktif)
                      ? 'images/aktif-history.png'
                      : 'images/selesai-history.png'),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    (aktif)
                        ? 'Hmm, tidak ada riwayat penyewaan yang masih berjalan'
                        : 'Belum ada riwayat penyewaan,cari kebutuhan acaramu di E-Vendor',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyTabBar extends StatelessWidget {
  final bool isActive;
  final String title;
  final Function() onPressed;
  const MyTabBar(
      {super.key,
      required this.isActive,
      required this.title,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Column(
          children: [
            Text(title,
                style: (isActive)
                    ? kMediumTextStyle.copyWith(fontSize: 16)
                    : kRegularTextStyle.copyWith(
                        fontSize: 16, color: Colors.black.withOpacity(0.6))),
            const SizedBox(
              height: 3,
            ),
            Container(
              color: (isActive) ? unguGelap : const Color(0xFFECECEC),
              height: 2,
            )
          ],
        ),
      ),
    );
  }
}
