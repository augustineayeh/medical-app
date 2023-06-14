import 'package:flutter/material.dart';
import 'package:medical_app/src/screens/appointment/widgets/notif_button.dart';
import 'package:medical_app/src/utils/app_colors.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Monika!',
              style: TextStyle(
                  color: AppColors.purple,
                  fontWeight: FontWeight.w600,
                  fontSize: 30),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8),
              child: Text(
                'How are you feeling today?',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        NotificationsButton(),
      ],
    );
  }
}
