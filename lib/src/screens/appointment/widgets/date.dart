import 'package:flutter/material.dart';
import 'package:medical_app/src/models/date.dart';
import 'package:medical_app/src/utils/app_colors.dart';

class DateWidget extends StatefulWidget {
  final DateModel date;
  final int index;

  const DateWidget({super.key, required this.date, required this.index});

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      padding: const EdgeInsets.only(top: 20),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Text(
            widget.date.dayName,
            style: const TextStyle(
                color: AppColors.purple,
                fontWeight: FontWeight.w500,
                fontSize: 22),
          ),
          Text(
            widget.date.numeral.toString(),
            style: const TextStyle(
                color: AppColors.purple,
                fontWeight: FontWeight.w500,
                fontSize: 22),
          )
        ],
      ),
    );
  }
}
