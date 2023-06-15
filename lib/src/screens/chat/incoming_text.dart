// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:medical_app/src/utils/utils.dart';

class IncomingText extends StatelessWidget {
  final String text;

  const IncomingText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: const Color(0xFFe8e8e8),
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        text,
        style: const TextStyle(
            color: AppColors.purple, fontWeight: FontWeight.w500, fontSize: 16),
      ),
    );
  }
}
