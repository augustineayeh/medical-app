import 'package:flutter/material.dart';
import 'package:medical_app/src/screens/appointment/widgets/scheduletime.dart';
import 'package:medical_app/src/screens/appointment/widgets/widgets.dart';
import 'package:medical_app/src/utils/app_constants.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: AppConstants.regularPadding,
                  child: Column(children: [
                    TopBar(),
                    DoctorInfo(),
                  ]),
                ),
                ScheduleDay(),
                Padding(
                  padding: AppConstants.regularPadding,
                  child: Column(
                    children: [
                      ScheduleTime(),
                      Complaint(),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
