import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  static const String routeName = "home_view";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;

  List<Widget> screenWidgets = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: screenWidgets[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/home.png'),
            ),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/map.png'),
            ),
            label: 'الخريطة',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/add.png'),
            ),
            label: 'اضافة',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/order.png'),
            ),
            label: 'طلباتي',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Message.png'),
            ),
            label: 'الرسائل',
          ),
        ],
        showUnselectedLabels: true,
        selectedLabelStyle: Styles.textStyle11.copyWith(
          color: Colors.red,
        ),
        unselectedLabelStyle: Styles.textStyle11.copyWith(
          color: Colors.black.withOpacity(0.7),
        ),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        selectedIconTheme: const IconThemeData(color: Colors.red),
        unselectedIconTheme:
            IconThemeData(color: Colors.black.withOpacity(0.7)),
      ),
    );
  }
}
