// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:medical_app/src/models/models.dart';

class TimeWidget extends StatelessWidget {
  final Time time;
  final int index;
  final Color? containerColor;
  final Color? textColor;

  const TimeWidget({
    Key? key,
    required this.time,
    required this.index,
    this.containerColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: time.containerColor ?? Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          time.time,
          style: TextStyle(color: time.textColor ?? Colors.grey, fontSize: 17),
        )));
  }
}
