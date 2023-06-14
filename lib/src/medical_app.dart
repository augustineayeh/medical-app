import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'screens/home/home_page.dart';

class MedicalApp extends StatefulWidget {
  const MedicalApp({super.key});

  @override
  State<MedicalApp> createState() => _MedicalAppState();
}

class _MedicalAppState extends State<MedicalApp> {
  final int _currentIndex = 0;
  late PersistentTabController _persistentTabController;

  @override
  void initState() {
    super.initState();
    _persistentTabController =
        PersistentTabController(initialIndex: _currentIndex);
  }

  @override
  void dispose() {
    _persistentTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: PersistentTabView(
          context,
          floatingActionButton: SizedBox(
            height: 60,
            width: 60,
            child: FloatingActionButton(
              child: const Icon(Icons.call),
              onPressed: () {},
            ),
          ),
          controller: _persistentTabController,
          screens: _screens,
          items: navbarItems,
          confineInSafeArea: true,
          backgroundColor: Colors.white,
          handleAndroidBackButtonPress: true,
          resizeToAvoidBottomInset: true,
          stateManagement: true,
          hideNavigationBarWhenKeyboardShows: true,
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(10.0),
            colorBehindNavBar: Colors.white,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties(
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle.style6,
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
    );
  }

  List<PersistentBottomNavBarItem> navbarItems = [
    PersistentBottomNavBarItem(icon: const Icon(Icons.home)),
    PersistentBottomNavBarItem(icon: const Icon(Icons.home)),
    PersistentBottomNavBarItem(icon: const Icon(Icons.home)),
    PersistentBottomNavBarItem(icon: const Icon(Icons.home)),
  ];

  final List<Widget> _screens = <Widget>[
    const MyHomePage(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];
}
