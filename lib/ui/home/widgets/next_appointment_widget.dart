import 'package:flutter/material.dart';

import '../../ui.dart';

class NextAppointmentWidget extends StatelessWidget {
  const NextAppointmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Next Appointment',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF2e3253),
                  fontWeight: FontWeight.w500,
                )),
            Text('View All',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFe6964c),
                ))
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 139,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AppointmentScreen()),
                  );
                },
                child: Container(
                  //first one
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                "assets/images/nursepic.jpg",
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Dr. Helena Holk',
                                  style: TextStyle(
                                      color: Color(0xFF2e3253),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Physiotherapist',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 5, bottom: 5, left: 15, right: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFe5e5e6)),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/date.png',
                                    height: 10,
                                    width: 10,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    '10 Dec 2021',
                                    style: TextStyle(
                                      color: Color(0xFF2e3253),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 5, bottom: 5, left: 15, right: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFe5e5e6)),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/clock.png',
                                    height: 10,
                                    width: 10,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    '09:00-10:00',
                                    style: TextStyle(
                                      color: Color(0xFF2e3253),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ]),
                ),
              ),
              const SizedBox(width: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AppointmentScreen()),
                  );
                },
                child: Container(
                  //second
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                "assets/images/doc3.jpeg",
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Dr. Hakeem Khalifa',
                                  style: TextStyle(
                                      color: Color(0xFF2e3253),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Physiotherapist',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 5, bottom: 5, left: 15, right: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFe5e5e6)),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/date.png',
                                    height: 10,
                                    width: 10,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    '17 Dec 2021',
                                    style: TextStyle(
                                      color: Color(0xFF2e3253),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 5, bottom: 5, left: 15, right: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFe5e5e6)),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/clock.png',
                                    height: 10,
                                    width: 10,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    '10:00-11:00',
                                    style: TextStyle(
                                      color: Color(0xFF2e3253),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ]),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
