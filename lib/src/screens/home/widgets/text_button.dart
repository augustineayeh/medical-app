// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:medical_app/src/utils/utils.dart';

class OrangeTextButton extends StatelessWidget {
  const OrangeTextButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(color: AppColors.orange, fontSize: 20),
        ));
  }
}
