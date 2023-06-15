// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:medical_app/src/models/models.dart';
import 'package:medical_app/src/utils/utils.dart';

class DateWidget extends StatefulWidget {
  final Date date;
  final int index;

  const DateWidget({
    Key? key,
    required this.date,
    required this.index,
  }) : super(key: key);

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
          color: widget.date.containerColor ?? Colors.white,
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Text(
            widget.date.dayName,
            style: TextStyle(
              color: widget.date.textColor ?? AppColors.purple,
              fontWeight: FontWeight.w500,
              fontSize: 22,
            ),
          ),
          Text(
            widget.date.numeral.toString(),
            style: TextStyle(
                color: widget.date.textColor ?? AppColors.purple,
                fontWeight: FontWeight.w500,
                fontSize: 22),
          )
        ],
      ),
    );
  }
}
