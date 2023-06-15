import 'package:flutter/material.dart';
import 'package:medical_app/src/models/models.dart';
import 'package:medical_app/src/screens/home/widgets/doctor.dart';
import 'package:medical_app/src/screens/home/widgets/text_button.dart';
import 'package:medical_app/src/utils/utils.dart';

class NextAppointment extends StatelessWidget {
  const NextAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: AppConstants.regularPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Next Appointment', style: TextStyles.title),
              OrangeTextButton(text: 'View All')
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
