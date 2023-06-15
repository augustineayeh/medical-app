// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:medical_app/src/models/models.dart';

class TopNavBar extends StatelessWidget {
  final Doctor doctor;
  final int index;

  const TopNavBar({
    Key? key,
    required this.doctor,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color(0xFF525672),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
              ),
              Text(
                doctor.name,
                style: const TextStyle(
                  fontSize: 27,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xFF525672),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.phone,
                    color: Colors.white,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: Image.asset(
                  'assets/images/green-circle-emoji.png',
                  height: 15,
                  width: 15,
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              const Text('Online',
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ],
          )
        ],
      ),
    );
  }
}
