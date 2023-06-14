import 'package:flutter/material.dart';
import 'package:medical_app/src/screens/appointment/widgets/notif_button.dart';
import 'package:medical_app/src/utils/text_styles.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BackButton(),
          Text(
            'Appointment',
            style: TextStyles.title,
          ),
          NotificationsButton()
        ],
      ),
    );
  }
}
