import 'package:flutter/material.dart';
import 'package:medical_app/src/models/models.dart';
import 'package:medical_app/src/screens/home/widgets/service.dart';
import 'package:medical_app/src/screens/home/widgets/text_button.dart';
import 'package:medical_app/src/utils/utils.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Our Services', style: TextStyles.title),
            OrangeTextButton(text: 'See More')
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
