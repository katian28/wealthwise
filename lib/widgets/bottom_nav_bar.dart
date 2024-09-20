import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  BottomNavBar({required this.selectedIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromRGBO(31, 44, 49, 1),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset('web/icons/Home.png'),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('web/icons/Budgeting.png'),
          label: 'Finance',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('web/icons/Wealthwise.png'),
          label: 'Add Expense',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('web/icons/Resource.png'),
          label: 'News',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('web/icons/Community.png'),
          label: 'Community',
        ),
      ],
      currentIndex: selectedIndex,
      showSelectedLabels: false, // Hide label for the selected item
      showUnselectedLabels: false, 
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.white,
      onTap: onTap,
    );
  }
}
