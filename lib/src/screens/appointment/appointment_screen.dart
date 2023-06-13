import 'package:flutter/material.dart';
import 'package:medical_app/src/screens/appointment/widgets/widgets.dart';

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
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(children: [
            TopBar(),
            SizedBox(height: 35),
            DoctorInfo(),
            SizedBox(height: 30),
            Schedules(),
            SizedBox(
              height: 30,
            ),
            Complaint(),
          ]),
        ),
      )),
    );
  }
}
