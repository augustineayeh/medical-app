import 'package:flutter/material.dart';
import 'package:medical_app/src/models/time.dart';

class TimeWidget extends StatelessWidget {
  final String time;
  final int index;

  const TimeWidget({
    Key? key,
    required this.time,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          times[index],
          style: const TextStyle(color: Colors.grey, fontSize: 17),
        )));
  }
}
