import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: SizedBox(
          height: 60,
          width: 60,
          child: FloatingActionButton(
            backgroundColor: const Color(0xFF2e3253),
            child: const Icon(Icons.call_outlined),
            onPressed: () {},
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
              left: 15,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/home.png',
                ),
                Image.asset(
                  'assets/images/note-pad.png',
                ),
                Image.asset(
                  'assets/images/profile.png',
                ),
                Image.asset(
                  'assets/images/settings.png',
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                WelcomeAndNotificationSection(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                    bottom: 23,
                  ),
                  child: TopStackWidget(),
                ),
                SizedBox(height: 15),
                SearchFieldSection(),
                SizedBox(
                  height: 25,
                ),
                OurServicesWidget(),
                SizedBox(
                  height: 25,
                ),
                NextAppointmentWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}