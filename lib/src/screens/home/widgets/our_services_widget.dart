import 'package:flutter/material.dart';
import 'package:medical_app/src/models/services.dart';
import 'package:medical_app/src/screens/home/widgets/service_widget.dart';

class OurServicesWidget extends StatelessWidget {
  const OurServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Our Services',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF2e3253),
                )),
            Text('See More',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFe6964c),
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
              ServiceModel service = services[index];
              return ServiceWidget(service: service, index: index);
            },
          ),
        )
      ],
    );
  }
}
