import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_bottom_sheet.dart';
import 'package:broker/features/home/presentation/views/home_view.dart';
import 'package:broker/features/map/presentation/views/map_view.dart';
import 'package:broker/features/messages/presentation/views/message_view.dart';
import 'package:broker/features/orders/presentation/views/orders_view.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  static const String routeName = "home_view";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();


  List<Widget> screenWidgets = [
    const HomeView(),
    const MapView(),
    Container(),
    const OrdersView(),
    const MessageView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: Drawer(
        backgroundColor: Colors.white,
      ),
      body: screenWidgets[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          if (index == 2) {
            showCustomBottomSheet();
          } else if (index == 5) {
            _drawerKey.currentState?.openDrawer();
          } else {
            setState(() {
              selectedIndex = index;
            });
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/home.png')),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/map.png')),
            label: 'الخريطة',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/add.png')),
            label: 'اضافة',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/order.png')),
            label: 'طلباتي',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/Message.png')),
            label: 'الرسائل',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'القائمة',
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

  void showCustomBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => const CustomBottomSheet(),
    );
  }
}