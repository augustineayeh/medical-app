import 'package:flutter/material.dart';
import 'package:medical_app/src/models/doctor.dart';
import 'package:medical_app/src/screens/home/widgets/doctor.dart';

class NextAppointmentWidget extends StatelessWidget {
  const NextAppointmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Next Appointment',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xFF2e3253),
                    fontWeight: FontWeight.w500,
                  )),
              Text('View All',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFe6964c),
                  ))
            ],
          ),
        ),
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: SizedBox(
              height: 149,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(width: 20),
                itemCount: doctors.length,
                itemBuilder: (context, index) {
                  final doctor = doctors[index];
                  return DoctorWidget(doctor: doctor, index: index);
                },
              )),
        ),
      ],
    );
  }
}
