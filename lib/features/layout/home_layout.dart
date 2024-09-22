import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_bottom_sheet.dart';
import 'package:broker/features/home/presentation/views/home_view.dart';
import 'package:broker/features/layout/widgets/custom_drawer.dart';
import 'package:broker/features/map/presentation/views/map_view.dart';
import 'package:broker/features/messages/presentation/views/message_view.dart';
import 'package:broker/features/orders/presentation/views/orders_view.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key, required this.selectedIndex});

  static const String routeName = "home_view";
  final int selectedIndex;

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  late int _currentIndex;

  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const CustomDrawer(),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          for (final tabItem in TabNavigationItem.items) tabItem.page,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index == 2) {
            showCustomBottomSheet();
          } else if (index == 5) {
            _drawerKey.currentState?.openDrawer();
          } else {
            setState(() {
              _currentIndex = index;
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

class TabNavigationItem {
  final Widget page;

  TabNavigationItem({
    required this.page,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: const HomeView(),
        ),
        TabNavigationItem(
          page: const MapView(),
        ),
        TabNavigationItem(
          page: Container(), // Consider implementing functionality here
        ),
        TabNavigationItem(
          page: const OrdersView(),
        ),
        TabNavigationItem(
          page: const MessageView(),
        ),
      ];
}
