import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

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
              children: const [
                WelcomeAndNotificationSection(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                    bottom: 23,
                  ),
                  child: TopStackWidget(),
                ),
                SearchFieldSection(),
                SizedBox(
                  height: 20,
                ),
                OurServicesWidget(),
                SizedBox(
                  height: 20,
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
