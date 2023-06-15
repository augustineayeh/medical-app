// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:medical_app/src/utils/utils.dart';

class Date {
  final String dayName;
  final int numeral;
  final Color? containerColor;
  final Color? textColor;
  Date({
    required this.dayName,
    required this.numeral,
    this.containerColor,
    this.textColor,
  });
}

final List<Date> dates = [
  Date(dayName: 'Sat', numeral: 14),
  Date(dayName: 'Sun', numeral: 15),
  Date(
      dayName: 'Mon',
      numeral: 16,
      containerColor: AppColors.purple,
      textColor: Colors.white),
  Date(dayName: 'Tue', numeral: 17),
  Date(dayName: 'Wed', numeral: 18),
  Date(dayName: 'Thu', numeral: 19),
  Date(dayName: 'Fri', numeral: 20),
];
