import 'package:flutter/material.dart';
import 'package:medical_app/src/utils/app_colors.dart';

class TopStackWidget extends StatelessWidget {
  const TopStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
            decoration: BoxDecoration(
                color: const Color(0xFF2e3253),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 290,
                    child: Text(
                      'Take care of your mental health during pandemic',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.orange,
                              borderRadius: BorderRadius.circular(50)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            child: Text(
                              'Join now',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
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
                                  width: 30,
                                ),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              const Text(
                                'Watch',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
        Positioned(
            top: -27,
            right: 30,
            child: Image.asset(
              'assets/images/sticker.webp',
              width: 100,
              height: 180,
            ))
      ],
    );
  }
}
