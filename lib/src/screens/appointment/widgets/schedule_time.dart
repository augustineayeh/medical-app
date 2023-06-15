import 'package:flutter/material.dart';
import 'package:medical_app/src/models/models.dart';
import 'package:medical_app/src/screens/appointment/widgets/time.dart';

class ScheduleTime extends StatefulWidget {
  const ScheduleTime({super.key});

  @override
  State<ScheduleTime> createState() => _ScheduleTimeState();
}

class _ScheduleTimeState extends State<ScheduleTime> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 30,
            mainAxisSpacing: 20,
            childAspectRatio: 2.2),
        itemCount: times.length,
        itemBuilder: (context, index) {
          final time = times[index];
          return TimeWidget(time: time, index: index);
        });
  }
}
