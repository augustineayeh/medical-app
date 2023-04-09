import 'package:flutter/material.dart';
import 'package:medical_app/appointment.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
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
                        Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(Icons.notifications));
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
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    bottom: 15 + 8,
                  ),
                  child: Stack(clipBehavior: Clip.none, children: <Widget>[
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
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
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
                                          color: const Color(0xFFe6964c),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: const Padding(
                                        padding: EdgeInsets.only(
                                            top: 5,
                                            left: 15,
                                            right: 15,
                                            bottom: 5),
                                        child: Text(
                                          'Join now',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
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
                                                borderRadius:
                                                    BorderRadius.circular(20)),
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
                                                color: Colors.white,
                                                fontSize: 18),
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
                  ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 340,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Search',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Icon(Icons.search)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(Icons.menu),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Our Services',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF2e3253),
                        )),
                    Text('See More',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFe6964c),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Image.asset(
                          'assets/images/coronavirus.png',
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Image.asset(
                          'assets/images/stethoscope.png',
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Image.asset(
                          'assets/images/syringe-outline.png',
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Image.asset(
                          'assets/images/cross.png',
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 380,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Covid',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF2e3253),
                          )),
                      Text('Doctors',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF2e3253),
                          )),
                      Text('Analyzes',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF2e3253),
                          )),
                      Text('Clinic',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF2e3253),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
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
                                builder: (context) => const Appointment()),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          top: 5,
                                          bottom: 5,
                                          left: 15,
                                          right: 15),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                          top: 5,
                                          bottom: 5,
                                          left: 15,
                                          right: 15),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                builder: (context) => const Appointment()),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          top: 5,
                                          bottom: 5,
                                          left: 15,
                                          right: 15),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                          top: 5,
                                          bottom: 5,
                                          left: 15,
                                          right: 15),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
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
            ),
          ),
        ),
      ),
    );
  }
}
