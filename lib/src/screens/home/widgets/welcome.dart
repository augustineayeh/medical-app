import 'package:flutter/material.dart';
import 'package:medical_app/src/screens/appointment/widgets/notif_button.dart';
import 'package:medical_app/src/utils/utils.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 400,
      child: ListTile(
        title: Text(
          'Hi, Monika!',
          style: TextStyle(
              color: AppColors.purple,
              fontWeight: FontWeight.w600,
              fontSize: 30),
        ),
        subtitle: Text(
          'How are you feeling today?',
          style: TextStyle(
              fontSize: 18, color: Colors.grey, fontWeight: FontWeight.w400),
        ),
        trailing: NotificationsButton(),
      ),
    );
  }
}
