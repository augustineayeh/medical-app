import 'package:flutter/material.dart';
import 'package:medical_app/src/models/models.dart';
import 'package:medical_app/src/screens/appointment/appointment_screen.dart';
import 'package:medical_app/src/utils/utils.dart';

class DoctorWidget extends StatelessWidget {
  final Doctor doctor;
  final int index;

  const DoctorWidget({
    Key? key,
    required this.doctor,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  AppointmentScreen(doctor: doctor, index: index)),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(20)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  doctor.imageUrl,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor.name,
                    style: const TextStyle(
                        color: AppColors.purple,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    'Physiotherapist',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFe5e5e6)),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/date.png',
                      height: 10,
                      width: 10,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      doctor.date,
                      style: const TextStyle(
                        color: AppColors.purple,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 5, bottom: 5, left: 15, right: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFe5e5e6)),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/clock.png',
                      height: 10,
                      width: 10,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      doctor.time,
                      style: const TextStyle(
                        color: AppColors.purple,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
