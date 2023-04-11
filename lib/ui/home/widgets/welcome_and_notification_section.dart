import 'package:flutter/material.dart';

class WelcomeAndNotificationSection extends StatelessWidget {
  const WelcomeAndNotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Hi, Monika!',
              style: TextStyle(
                  color: Color(0xFF2e3253),
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
        InkWell(
          onTap: () {
            //! Do not compose widgets inside the callback method
            // Container(
            //     padding: const EdgeInsets.all(10),
            //     decoration: BoxDecoration(
            //         border: Border.all(color: Colors.grey),
            //         borderRadius: BorderRadius.circular(10)),
            //     child: const Icon(Icons.notifications));
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              'assets/images/bell.png',
              height: 20,
              width: 20,
            ),
          ),
        ),
      ],
    );
  }
}
