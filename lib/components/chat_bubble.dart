import 'package:flutter/material.dart';
import 'package:fps/constants/constant.dart';

class ChatBubbleWidget extends StatelessWidget {
  final bool isUser;
  final String message;
  const ChatBubbleWidget(
      {super.key, required this.isUser, required this.message});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        (isUser) ? const Spacer() : const SizedBox(),
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(bottom: 15),
          constraints: BoxConstraints(maxWidth: width * 0.7, minWidth: 70),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(20),
                  topRight: const Radius.circular(20),
                  bottomLeft: (isUser)
                      ? const Radius.circular(20)
                      : const Radius.circular(0),
                  bottomRight: (isUser)
                      ? const Radius.circular(0)
                      : const Radius.circular(20)),
              color: (isUser) ? unguGelap : abu),
          child: Text(
            message,
            style: kRegularTextStyle.copyWith(
                fontSize: 16, color: (isUser) ? Colors.white : Colors.black),
          ),
        ),
        (isUser) ? const SizedBox() : const Spacer(),
      ],
    );
  }
}

class ChatBubble {
  final bool isUser;
  final String message;
  const ChatBubble({required this.isUser, required this.message});
}
