import 'package:flutter/material.dart';
import 'package:medical_app/src/screens/appointment/appointment_screen.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        backgroundColor: const Color(0xFF2e3253),
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const AppointmentScreen()),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 0.0,
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      height: size.height * 0.73,
                      width: size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 30,
                                  bottom: 50,
                                ),
                                child: Container(
                                  width: 120,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
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
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                  width: 20,
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
                              height: 40,
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
                              height: 110,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                  width: 10,
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
                                        color: Colors.white,
                                      ),
                                      Image.asset(
                                        'assets/images/sound-waves.png',
                                        height: 30,
                                        width: 100,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 45,
                            ),
                            const SizedBox(
                              height: 45,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 350,
                      left: 20,
                      right: 20,
                      child: Row(
                        children: [
                          const Expanded(
                            child: SizedBox(
                              child: Divider(
                                height: 1,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 6,
                              ),
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
                          ),
                          const Expanded(
                            child: SizedBox(
                              child: Divider(
                                height: 1,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 20,
                      right: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: SizedBox(
                              child: TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(right: 20.0),
                                    child: Image.asset(
                                      'assets/images/microphone.png',
                                      height: 25,
                                      width: 25,
                                    ),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 20,
                                    horizontal: 20,
                                  ),
                                  hintText: 'Write a message',
                                  hintStyle:
                                      const TextStyle(color: Colors.grey),
                                  suffixIconConstraints: const BoxConstraints(
                                    maxWidth: 150,
                                    maxHeight: 40,
                                  ),
                                  fillColor: Colors.grey,
                                  focusColor: Colors.grey,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFACADAD),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFACADAD),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFACADAD),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: const Color(0xFFe6964c),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.send,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
