import 'package:flutter/material.dart';
import 'package:medical_app/src/utils/utils.dart';

class TopStackWidget extends StatelessWidget {
  const TopStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22, bottom: 22),
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: AppColors.purple,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 290,
                    child: Text(
                      'Take care of your mental health during the pandemic',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                            color: AppColors.orange,
                            borderRadius: BorderRadius.circular(50)),
                        child: const Text(
                          'Join now',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Image.asset(
                                'assets/images/play-button.png',
                                height: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            const Text(
                              'Watch',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              )),
          Positioned(
              top: -27,
              right: 15,
              child: Image.asset(
                'assets/images/sticker.webp',
                width: 100,
                height: 180,
              ))
        ],
      ),
    );
  }
}
