// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:medical_app/src/models/models.dart';
import 'package:medical_app/src/screens/appointment/widgets/widgets.dart';
import 'package:medical_app/src/utils/utils.dart';

class AppointmentScreen extends StatefulWidget {
  final Doctor doctor;
  final int index;

  const AppointmentScreen({
    Key? key,
    required this.doctor,
    required this.index,
  }) : super(key: key);

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: AppConstants.regularPadding,
                  child: Column(children: [
                    const TopBar(),
                    DoctorInfo(doctor: widget.doctor, index: widget.index)
                  ]),
                ),
                const ScheduleDay(),
                Padding(
                  padding: AppConstants.regularPadding,
                  child: Column(
                    children: [
                      const ScheduleTime(),
                      Complaint(doctor: widget.doctor, index: widget.index),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
