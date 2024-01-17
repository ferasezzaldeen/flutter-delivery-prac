import 'package:delivery_app/screens/vegetables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
    print(_selectedPageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const VegetablesScreen(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/grid.svg',
                  height: 24, width: 24),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/shopping_cart.svg',
                  height: 24, width: 24),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/user.svg',
                  height: 24, width: 24),
              label: ''),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
