import 'package:flutter/material.dart';
import 'package:medical_app/src/models/doctor.dart';
import 'package:medical_app/src/screens/home/widgets/doctor.dart';
import 'package:medical_app/src/utils/app_colors.dart';
import 'package:medical_app/src/utils/text_styles.dart';

class NextAppointment extends StatelessWidget {
  const NextAppointment({super.key});

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
              Text('Next Appointment', style: TextStyles.title),
              Text('View All',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.orange,
                  ))
            ],
          ),
        ),
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: SizedBox(
              height: 149,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
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
