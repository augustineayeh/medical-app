// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:medical_app/src/models/services.dart';
import 'package:medical_app/src/utils/app_colors.dart';

class ServiceWidget extends StatelessWidget {
  final Service service;
  final int index;

  const ServiceWidget({
    Key? key,
    required this.service,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset(
              service.iconUrl,
              height: 30,
              width: 30,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(service.label,
            style: const TextStyle(
              fontSize: 15,
              color: AppColors.purple,
            ))
      ],
    );
  }
}
