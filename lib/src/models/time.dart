import 'package:flutter/material.dart';
import 'package:medical_app/src/utils/utils.dart';

class Time {
  final String time;
  final Color? containerColor;
  final Color? textColor;

  Time({
    required this.time,
    this.containerColor,
    this.textColor,
  });
}

final List<Time> times = [
  Time(time: '09:15 AM'),
  Time(time: '09:30 AM'),
  Time(time: '09:45 AM'),
  Time(
      time: '10:00 AM',
      containerColor: AppColors.purple,
      textColor: Colors.white),
  Time(time: '10:15 AM'),
  Time(time: '10:30 AM'),
];
