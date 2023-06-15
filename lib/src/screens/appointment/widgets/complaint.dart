// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:medical_app/src/models/models.dart';
import 'package:medical_app/src/screens/chat/chat_sreen.dart';
import 'package:medical_app/src/utils/utils.dart';

class Complaint extends StatelessWidget {
  final Doctor doctor;
  final int index;
  const Complaint({
    Key? key,
    required this.doctor,
    required this.index,
  }) : super(key: key);

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
        InkWell(
          onTap: (() {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ChatScreen(doctor: doctor, index: index)),
            );
          }),
          child: Container(
              margin: const EdgeInsets.only(top: 20),
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
