import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'home/home_page.dart';

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
      //

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
          backgroundColor: Colors.white, // Default is Colors.white.
          handleAndroidBackButtonPress: true, // Default is true.
          resizeToAvoidBottomInset:
              true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true, // Default is true.
          hideNavigationBarWhenKeyboardShows:
              true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(10.0),
            colorBehindNavBar: Colors.white,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle
              .style6, // Choose the nav bar style with this property.
        ),
      ),

      //  RollingBottomBar(
      //   flat: false,
      //   controller: _controller,
      //   items: const [
      //     RollingBottomBarItem(Icons.home, label: 'Page 1'),
      //     RollingBottomBarItem(Icons.star, label: 'Page 2'),
      //     RollingBottomBarItem(Icons.person, label: 'Page 3'),
      //     RollingBottomBarItem(Icons.access_alarm, label: 'Page 4'),
      //   ],
      //   activeItemColor: Colors.green.shade700,
      //   enableIconRotation: true,
      //   onTap: (index) {
      //     // _controller.animateToPage(
      //     //   index,
      //     //   duration: const Duration(milliseconds: 400),
      //     //   curve: Curves.easeOut,
      //     // );
      //   },
      // ),
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
