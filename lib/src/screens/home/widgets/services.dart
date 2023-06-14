import 'package:flutter/material.dart';
import 'package:medical_app/src/models/services.dart';
import 'package:medical_app/src/screens/home/widgets/service.dart';
import 'package:medical_app/src/utils/app_colors.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Our Services',
                style: TextStyle(
                  fontSize: 24,
                  color: AppColors.purple,
                )),
            Text('See More',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.orange,
                ))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 90,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(width: 50),
            itemCount: services.length,
            itemBuilder: (context, index) {
              Service service = services[index];
              return ServiceWidget(service: service, index: index);
            },
          ),
        )
      ],
    );
  }
}
