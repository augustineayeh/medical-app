import 'package:flutter/material.dart';
import 'package:medical_app/ui/home/home.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage()),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              'assets/images/back.png',
              height: 20,
              width: 20,
            ),
          ),
        ),
        const Text(
          'Appointment',
          style: TextStyle(
            fontSize: 25,
            color: Color(0xFF2e3253),
            fontWeight: FontWeight.w500,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Image.asset(
            'assets/images/bell.png',
            height: 20,
            width: 20,
          ),
        ),
      ],
    );
  }
}
