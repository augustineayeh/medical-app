import 'package:flutter/material.dart';

class OutgoingText extends StatelessWidget {
  final String text;

  const OutgoingText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(bottom: 40),
        width: 295,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: const Color(0xFF2e3253),
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),
        ),
      ),
    );
  }
}
