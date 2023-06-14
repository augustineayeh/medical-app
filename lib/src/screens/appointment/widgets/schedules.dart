import 'package:flutter/material.dart';
import 'package:medical_app/src/models/date.dart';
import 'package:medical_app/src/screens/appointment/widgets/date.dart';
import 'package:medical_app/src/utils/text_styles.dart';

class ScheduleDay extends StatelessWidget {
  const ScheduleDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(children: [
        const SizedBox(height: 30),
        const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Select Schedule',
              style: TextStyles.title,
            )),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: dates.length,
            itemBuilder: (context, index) {
              final DateModel date = dates[index];
              return DateWidget(date: date, index: index);
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          color: Colors.grey,
          height: 1,
        ),
        const SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}
