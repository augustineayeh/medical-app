import 'package:flutter/material.dart';

class Schedules extends StatelessWidget {
  const Schedules({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
    ]);
  }
}
