import 'package:flutter/material.dart';
import 'package:medical_app/chat.dart';
import 'package:medical_app/ui/home/home_page.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      'assets/images/back.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
                const Text(
                  'AppointmentScreen',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF2e3253),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
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
              ],
            ),
            const SizedBox(height: 35),
            Stack(clipBehavior: Clip.none, children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xFF2e3253),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Dr. Martin Zamkin',
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Physiotherapist',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Image.asset(
                                'assets/images/telephone.png',
                                height: 12,
                                width: 12,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Image.asset(
                                'assets/images/monitor.png',
                                height: 12,
                                width: 12,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)),
                              child: Image.asset(
                                'assets/images/green-circle-emoji.png',
                                height: 10,
                                width: 10,
                              ),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            const Text('Online',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: -19,
                  right: 30,
                  child: Image.asset(
                    'assets/images/sticker2.webp',
                    height: 180,
                    width: 140,
                  ))
            ]),
            const SizedBox(height: 30),
            const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Select Schedules',
                  style: TextStyle(
                      fontSize: 22,
                      color: Color(0xFF2e3253),
                      fontWeight: FontWeight.w600),
                )),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: const [
                        Text(
                          'Sat',
                          style: TextStyle(
                              color: Color(0xFF2e3253),
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                        Text(
                          '14',
                          style: TextStyle(
                              color: Color(0xFF2e3253),
                              fontWeight: FontWeight.w500,
                              fontSize: 22),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: const [
                        Text(
                          'Sun',
                          style: TextStyle(
                              color: Color(0xFF2e3253),
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                        Text(
                          '14',
                          style: TextStyle(
                              color: Color(0xFF2e3253),
                              fontWeight: FontWeight.w500,
                              fontSize: 22),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: const Color(0xFF2e3253),
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: const [
                        Text(
                          'Mon',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                        Text(
                          '16',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 22),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: const [
                        Text(
                          'Tue',
                          style: TextStyle(
                              color: Color(0xFF2e3253),
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                        Text(
                          '14',
                          style: TextStyle(
                              color: Color(0xFF2e3253),
                              fontWeight: FontWeight.w500,
                              fontSize: 22),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: const [
                        Text(
                          'Wed',
                          style: TextStyle(
                              color: Color(0xFF2e3253),
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                        Text(
                          '14',
                          style: TextStyle(
                              color: Color(0xFF2e3253),
                              fontWeight: FontWeight.w500,
                              fontSize: 22),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: const [
                        Text(
                          'Thu',
                          style: TextStyle(
                              color: Color(0xFF2e3253),
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                        Text(
                          '14',
                          style: TextStyle(
                              color: Color(0xFF2e3253),
                              fontWeight: FontWeight.w500,
                              fontSize: 22),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: const [
                        Text(
                          'Fri',
                          style: TextStyle(
                              color: Color(0xFF2e3253),
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                        Text(
                          '14',
                          style: TextStyle(
                              color: Color(0xFF2e3253),
                              fontWeight: FontWeight.w500,
                              fontSize: 22),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Colors.grey,
              height: 1,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text('09:15 AM')),
                Container(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text('09:30 AM')),
                Container(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text('09:45 AM'))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text('10:00 AM')),
                Container(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text('10:15 AM')),
                Container(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: const Color(0xFF2e3253),
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      '10:30 AM',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 150,
              padding: const EdgeInsets.only(
                  top: 20, bottom: 10, left: 20, right: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Write your complaint here...',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Chat()),
                );
              }),
              child: Container(
                  width: 400,
                  padding: const EdgeInsets.only(
                      top: 15, bottom: 15, left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: const Color(0xFFe6964c),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Make an AppointmentScreen',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  )),
            )
          ]),
        ),
      )),
    );
  }
}
