import 'package:flutter/material.dart';
import 'package:medical_app/ui/appointment/widgets/widgets.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children: const [
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
