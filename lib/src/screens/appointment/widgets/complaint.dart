import 'package:flutter/material.dart';
import 'package:medical_app/src/screens/chat/chat.dart';
import 'package:medical_app/src/utils/app_colors.dart';

class Complaint extends StatelessWidget {
  const Complaint({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          maxLines: 6,
          decoration: InputDecoration(
            hintText: 'Write your complaint here...',
            hintStyle: const TextStyle(color: Colors.grey),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xff015ee2)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color(0xFFACADAD),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: (() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Chat()),
            );
          }),
          child: Container(
              width: 400,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: AppColors.orange,
                  borderRadius: BorderRadius.circular(15)),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Make an Appointment',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              )),
        )
      ],
    );
  }
}
