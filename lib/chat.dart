import 'package:flutter/material.dart';
import 'package:medical_app/ui/appointment/appointment_screen.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2e3253),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(clipBehavior: Clip.none, children: <Widget>[
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AppointmentScreen()),
                        );
                      },
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: const Color(0xFF525672),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                    ),
                    const Text(
                      'Dr. Zamkin',
                      style: TextStyle(
                        fontSize: 27,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: const Color(0xFF525672),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.phone,
                          color: Colors.white,
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 159, right: 159),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)),
                        child: Image.asset(
                          'assets/images/green-circle-emoji.png',
                          height: 15,
                          width: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      const Text('Online',
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
                top: 200,
                right: -20,
                left: -20,
                child: Stack(children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    height: 720,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/minus.png',
                                height: 70,
                                width: 390,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: const Color(0xFFe8e8e8),
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Text(
                                  'Hi, Monika! How can i help you?',
                                  style: TextStyle(
                                      color: Color(0xFF2e3253),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 115,
                              ),
                              Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: const Color(0xFF2e3253),
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Text(
                                  'Hi, Doc! Can we meet tomorrow?',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: const Color(0xFFe8e8e8),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              'Oh, sure! 14:00 will be okay?',
                              style: TextStyle(
                                  color: Color(0xFF2e3253),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ),
                          const SizedBox(
                            height: 45,
                          ),
                          const Divider(
                            height: 1,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 45,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 250,
                              ),
                              Container(
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF2e3253),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/play-button-2.png',
                                        height: 20,
                                        width: 20,
                                      ),
                                      // Image.asset(
                                      //   'assets/images/sound-waves.png',
                                      //   height: 30,
                                      //   width: 30,
                                      // ),
                                      Image.asset(
                                        'assets/images/sound-waves.png',
                                        height: 30,
                                        width: 100,
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 45,
                          ),
                          Row(
                            children: const [
                              Text(
                                'Dr. Zamkin',
                                style: TextStyle(
                                    color: Color(0xFF2e3253),
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'is typing ...',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 45,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 330,
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: const Color(0xFFe8e8e8),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Write a message...',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                    Image.asset(
                                      'assets/images/microphone.png',
                                      height: 30,
                                      width: 30,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFe6964c),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Image.asset(
                                    'assets/images/send.png',
                                    height: 30,
                                    width: 30,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 320,
                    left: 170,
                    right: 170,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color(0xFFe8e8e8),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Today',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  )
                ]))
          ]),
        ),
      )),
    );
  }
}
