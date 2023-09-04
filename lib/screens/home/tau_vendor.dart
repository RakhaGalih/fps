import 'package:flutter/material.dart';
import 'package:fps/components/app_bar.dart';
import 'package:fps/components/chat_bubble.dart';

class TauVendor extends StatefulWidget {
  const TauVendor({super.key});

  @override
  State<TauVendor> createState() => _TauVendorState();
}

class _TauVendorState extends State<TauVendor> {
  List<ChatBubble> chats = [
    const ChatBubble(
        isUser: true,
        message:
            'Hello ! berikan saya rekomendasi penyewaan dekor ulang tahun'),
    const ChatBubble(
        isUser: false, message: 'Hello! apa yang bisa saya bantu hari ini?'),
    const ChatBubble(
        isUser: false,
        message:
            'Oke, ketikkan angka untuk pilih dekor ulang tahun seperti apa yang anda cari: \n 1. Dekor ulang tahun anak-anak \n 2. Dekor ulang tahun minimalis \n 3. Dekor ulang tahun indor \n 4. Dekor ulang tahun outdor \n 5. Lainnya'),
    const ChatBubble(isUser: true, message: '1'),
    const ChatBubble(
        isUser: false,
        message: 'Oke, berikut rekomendasi vendor dekor ulang tahun anak-anak'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MyCustomAppBar(
                onPressed: () {
                  Navigator.pop(context);
                },
                title: 'Tauvendor'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: List.generate(
                    chats.length,
                    (index) => ChatBubbleWidget(
                        isUser: chats[index].isUser,
                        message: chats[index].message)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
